import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../assets/colors/colors.dart';

class GradientIcon extends StatelessWidget {
  final String iconName;
  final double size;
  final LinearGradient? gradient;
  const GradientIcon({
    Key? key,
    this.size = 18,
    this.gradient,
    required this.iconName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) {
        return gradient != null
            ? gradient!.createShader(bounds)
            : wgradient.createShader(bounds);
      },
      child: SvgPicture.asset(
        iconName,
        height: size,
        width: size,
        color: white,
      ),
    );
  }
}
