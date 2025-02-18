import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../resource/resource.dart';

class BasicTextField extends StatelessWidget {
  const BasicTextField({
    super.key,
    required this.hintText,
    this.controller,
  });

  final String hintText;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        suffixIcon: hintText == "Password"
            ? Padding(
                padding: const EdgeInsets.only(right: 20),
                child: SvgPicture.asset(
                  Assets.icons.hidePassIcon.path,
                ),
              )
            : null,
      ).applyDefaults(Theme.of(context).inputDecorationTheme),
    );
  }
}
