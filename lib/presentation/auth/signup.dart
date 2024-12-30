import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify/common/common.dart';
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
              _headSignUp(),
              const SizedBox(
                height: 30,
              ),
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
              const SizedBox(
                height: 40,
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
              )
            ],
          ),
        ));
  }

  Widget _headSignUp() {
    return const Column(
      children: [
        Text(
          'Register',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'If you need any support click here',
          style: TextStyle(
            fontSize: 16,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
