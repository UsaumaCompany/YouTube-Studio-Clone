import 'package:flutter/material.dart';

import '../../../assets/colors/colors.dart';

// THIS FOR ORDER STATUS'S SEARCH AND ITEM BACKGROUND
class WBackgroundShape extends StatelessWidget {
  final Widget child;
  const WBackgroundShape({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 16,
      ),
      decoration: BoxDecoration(
        color: greySmoke,
        borderRadius: BorderRadius.circular(8),
      ),
      child: child,
    );
  }
}
