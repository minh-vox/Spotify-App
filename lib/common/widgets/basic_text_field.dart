import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../resource/resource.dart';

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
