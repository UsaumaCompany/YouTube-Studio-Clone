import 'package:flutter/cupertino.dart';

import '../../../assets/themes/theme.dart';

class WBackButton extends StatelessWidget {
  final Color? color;
  const WBackButton({super.key, this.color});

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      child: Row(
        children: [
          Icon(
            CupertinoIcons.back,
            color: color,
          ),
          Text(
            "Ortga",
            style: AppTheme.bodySmall.copyWith(color: color),
          ),
        ],
      ),
      onPressed: () => Navigator.pop(context),
    );
  }
}
