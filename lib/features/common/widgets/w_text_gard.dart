import 'package:flutter/material.dart';
import '../../../assets/colors/colors.dart';

class WTextGrad extends StatelessWidget {
  const WTextGrad(
      {super.key, required this.text, this.fontSize = 16, this.fontWeight});
  final String text;
  final double fontSize;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => const LinearGradient(
        colors: [lightBlue, blue],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ).createShader(
        Rect.fromLTWH(
          0,
          0,
          bounds.width,
          bounds.height,
        ),
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight ?? FontWeight.w500,
        ),
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
      ),
    );
  }
}
