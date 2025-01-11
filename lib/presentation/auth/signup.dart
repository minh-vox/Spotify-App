import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:spotify/common/common.dart';
import 'package:spotify/common/widgets/bottom_signup_signin_widget.dart';
import 'package:spotify/common/widgets/top_signup_signin_widget.dart';
import 'package:spotify/resource/resource.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppBar(
        title: SvgPicture.asset(
          Assets.icons.spotifyIcon.path,
          height: 40,
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 40,
          vertical: 40,
        ),
        child: Column(
          children: [
            TopSignupSigninWidget(
              title: 'Register',
              body: _bodySignUp(context),
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
              title: 'Register',
            ),
          ],
        ),
      ),
    );
  }

  Widget _bodySignUp(BuildContext context) {
    return Column(
      children: [
        BasicTextField(
          hintText: 'Full Name',
          context: context,
        ),
        const SizedBox(
          height: 20,
        ),
        BasicTextField(
          hintText: 'Enter Email',
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
          height: 40,
        ),
        BasicAppButton(
          onPressed: () {},
          title: 'Creat Account',
        ),
      ],
    );
  }
}
