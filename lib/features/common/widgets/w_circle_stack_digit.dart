import 'package:flutter/material.dart';

import '../../../assets/colors/colors.dart';
import '../../../assets/themes/theme.dart';


class WCircleStackDigit extends StatelessWidget {
  final int number;
  final double left;
  const WCircleStackDigit({super.key, required this.number, this.left = 72});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: left,
      child: CircleAvatar(
        radius: 20,
        backgroundColor: shuttleGrey,
        child: CircleAvatar(
          backgroundColor: white,
          radius: 19,
          child: Center(
            child: Text(
              "+$number",
              style: AppTheme.displayMedium.copyWith(fontSize: 13),
            ),
          ),
        ),
      ),
    );
  }
}
