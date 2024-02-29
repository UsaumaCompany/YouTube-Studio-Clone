import 'package:flutter/material.dart';

class ModalBottomSheets {
  static Future showSimpleBottomSheet(BuildContext context,
      {required Widget child,
      Color? backgroundColor,
      Color? barrierColor,
      bool? enableDrag,
      bool? isScrollControlled,
      BoxConstraints? constrains}) async {
    showModalBottomSheet(
        context: context,
        constraints: constrains,
        isScrollControlled: isScrollControlled ?? false,
        enableDrag: enableDrag ?? true,
        backgroundColor: backgroundColor ?? Colors.transparent,
        barrierColor: barrierColor ?? Colors.black.withOpacity(.3),
        builder: (_) => child);
  }
}
