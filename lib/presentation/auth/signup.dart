import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../common/common.dart';
import '../../domain/domain.dart';
import '../../resource/resource.dart';
import '../../service_locator.dart';
import '../pre.dart';

class SignupPage extends StatelessWidget {
  SignupPage({super.key});

  final TextEditingController _userName = TextEditingController();
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
                title: 'Register',
                body: Column(
                  children: [
                    BasicTextField(
                      controller: _userName,
                      hintText: 'Full Name',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    BasicTextField(
                      controller: _email,
                      hintText: 'Enter Email',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    BasicTextField(
                      controller: _password,
                      hintText: 'Password',
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    BasicAppButton(
                      onPressed: () async {
                        var result = await getIt<SignupUseCase>().call(
                          params: RegisterEntity(
                            email: _email.text.toString(),
                            password: _password.text.toString(),
                            userName: _userName.text.toString(),
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
                                builder: (BuildContext context) => SignInPage(),
                              ),
                              (route) => false,
                            );
                          },
                        );
                      },
                      title: 'Create Account',
                    ),
                  ],
                ),
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
      ),
    );
  }
}
