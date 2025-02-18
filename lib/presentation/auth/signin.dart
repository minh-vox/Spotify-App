import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify/service_locator.dart';

import '../../common/common.dart';
import '../../domain/domain.dart';
import '../../resource/resource.dart';
import '../pre.dart';

class SignInPage extends StatelessWidget {
  SignInPage({super.key});

  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: BasicAppBar(
        title: SvgPicture.asset(
          Assets.icons.spotifyIcon.path,
          height: 40,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 40,
          vertical: 40,
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TopSignupSigninWidget(
                title: 'Sign In',
                body: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BasicTextField(
                      controller: _email,
                      hintText: 'Enter Username Or Email',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    BasicTextField(
                      controller: _password,
                      hintText: 'Password',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(
                        left: 20,
                      ),
                      child: Text(
                        'Recovery Password',
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    BasicAppButton(
                      onPressed: () async {
                        var result = await getIt<SigninUseCase>().call(
                          params: LoginEntity(
                            email: _email.text.toString(),
                            password: _password.text.toString(),
                          ),
                        );
                        result.fold(
                          (l) {
                            var snackbar = SnackBar(
                              content: Text(l),
                              behavior: SnackBarBehavior.floating,
                            );
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackbar);
                          },
                          (r) {
                            Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const HomePage(),
                              ),
                              (route) => false,
                            );
                          },
                        );
                      },
                      title: 'Sign In',
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const BottomSignupSigninWidget(
                      title: 'Sign In',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
