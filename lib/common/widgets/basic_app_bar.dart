import 'package:flutter/material.dart';
import 'package:spotify/common/helpers/is_dark_mode.dart';

class BasicAppBar extends StatelessWidget implements PreferredSizeWidget {
  const BasicAppBar({
    super.key,
    this.title,
    this.action,
    this.hideBack = false,
  });

  final Widget? title;
  final Widget? action;
  final bool hideBack;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      title: title ?? const Text(''),
      actions: [
        action ?? Container(),
      ],
      leading: IconButton(
        onPressed: () {
          hideBack ? null : Navigator.pop(context);
        },
        icon: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: context.isDarkMode
                ? Colors.white.withOpacity(0.03)
                : Colors.black.withOpacity(0.03),
            shape: BoxShape.circle,
          ),
          child: Icon(
            hideBack ? Icons.search : Icons.arrow_back_ios_new,
            size: hideBack ? 30 : 15,
            color: context.isDarkMode ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
