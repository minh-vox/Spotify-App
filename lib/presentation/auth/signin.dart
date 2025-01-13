import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../common/common.dart';
import '../../resource/resource.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                body: _bodySignIn(
                  context,
                ),
                context: context,
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 0.5,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            context.isDarkMode ? Colors.white : Colors.black,
                            Colors.transparent,
                          ],
                        ),
                      ),
                    ),
                  ),
                  const Text('Or'),
                  Expanded(
                    child: Container(
                      height: 0.5,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.transparent,
                            context.isDarkMode ? Colors.white : Colors.black,
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
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

  Widget _bodySignIn(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BasicTextField(
          hintText: 'Enter Username Or Email',
          context: context,
        ),
        const SizedBox(
          height: 20,
        ),
        BasicTextField(
          hintText: 'Password',
          context: context,
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
          onPressed: () {},
          title: 'Sign In',
        )
      ],
    );
  }
}
