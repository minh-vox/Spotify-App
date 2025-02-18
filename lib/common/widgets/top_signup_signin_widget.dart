import 'package:flutter/material.dart';

class TopSignupSigninWidget extends StatelessWidget {
  const TopSignupSigninWidget({
    super.key,
    required this.title,
    required this.body,
  });

  final String title;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 10,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('If You Need Any Support '),
            Text(
              'Click Here',
              style: TextStyle(
                color: Color(0xFF38B432),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        body,
      ],
    );
  }
}
