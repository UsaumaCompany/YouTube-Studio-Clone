import 'package:flutter/material.dart';

import '../../../assets/colors/colors.dart';

class GradientBorder extends StatelessWidget {
  final Widget child;
  final LinearGradient? gradient;
  final double width;
  final double borderRadius;

  const GradientBorder({
    super.key,
    required this.child,
    this.gradient,
    this.width = 1,
    this.borderRadius = 8,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _GradientBorderPainterWithRadius(gradient, width, borderRadius),
      child: child,
    );
  }
}

class _GradientBorderPainterWithRadius extends CustomPainter {
  final LinearGradient? gradient;
  final double width;
  final double borderRadius;

  _GradientBorderPainterWithRadius(
      this.gradient, this.width, this.borderRadius);

  @override
  void paint(Canvas canvas, Size size) {
    final outerRect = Rect.fromLTWH(0, 0, size.width, size.height);
    final innerRect = Rect.fromLTWH(
      width,
      width,
      size.width - 2 * width,
      size.height - 2 * width,
    );

    final outerPath = Path()
      ..addRRect(
          RRect.fromRectAndRadius(outerRect, Radius.circular(borderRadius)));
    final innerPath = Path()
      ..addRRect(RRect.fromRectAndRadius(
          innerRect, Radius.circular(borderRadius - width)));

    final path = Path.combine(PathOperation.difference, outerPath, innerPath);

    final gradientPaint = Paint()
      ..shader = gradient != null
          ? gradient!.createShader(outerRect)
          : wgradient.createShader(outerRect);

    canvas.drawPath(path, gradientPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
