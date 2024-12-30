import 'package:flutter/material.dart';

class BasicTextField extends StatelessWidget {
  const BasicTextField({
    super.key,
    required this.hintText,
    required this.context,
  });

  final String hintText;
  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
      ).applyDefaults(Theme.of(context).inputDecorationTheme),
    );
  }
}
