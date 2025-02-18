import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify/common/common.dart';

import '../../resource/resource.dart';

class BottomSignupSigninWidget extends StatelessWidget {
  const BottomSignupSigninWidget({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
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
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              Assets.icons.googleIcon.path,
              height: 40,
            ),
            const SizedBox(width: 50),
            SvgPicture.asset(
              Assets.icons.facebookIcon.path,
              height: 50,
            ),
          ],
        ),
        const SizedBox(height: 30),
        if (title == 'Register')
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Do You Have An Account? '),
              Text(
                'Sign In',
                style: TextStyle(
                  color: Color(0xFF288CE9),
                ),
              ),
            ],
          )
        else
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Not A Member? '),
              Text(
                'Register Now',
                style: TextStyle(
                  color: Color(0xFF288CE9),
                ),
              ),
            ],
          ),
      ],
    );
  }
}
