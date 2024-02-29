import 'package:flutter/material.dart';

import '../../../assets/colors/colors.dart';

class WAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? title;
  final double elevation;
  final Widget? leading;
  final List<Widget>? actions;
  final Color? backgroundColor;
  final PreferredSizeWidget? bottom;
  final double height;
  const WAppBar(
      {super.key,
      this.title,
      this.actions,
      this.leading,
      this.backgroundColor = white,
      this.bottom,
      this.elevation = 0.1,
      this.height = 56});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      leadingWidth: 100,
      centerTitle: true,
      elevation: elevation,
      shadowColor: grey,
      backgroundColor: backgroundColor,
      title: title,
      actions: actions,
      leading: leading,
      bottom: bottom,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
