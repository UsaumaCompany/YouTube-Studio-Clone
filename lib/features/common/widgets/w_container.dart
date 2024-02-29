import 'package:flutter/cupertino.dart';
import '../../../assets/colors/colors.dart';

class WContainer extends StatelessWidget {
  const WContainer({
    super.key,
    this.child,
    this.margin,
    this.padding,
    this.width,
    this.height,
    this.borderRadius,
    this.constraints,
    this.borderWidth,
    this.borderColor,
    this.boxShadow,
    this.color = white,
    this.image,
  });
  final Widget? child;
  final BoxConstraints? constraints;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final double? width;
  final double? height;
  final double? borderWidth;
  final double? borderRadius;
  final Color? color;
  final Color? borderColor;
  final ImageProvider<Object>? image;
  final List<BoxShadow>? boxShadow;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius ?? 8),
        border: Border.all(
          color: borderColor ?? white,
          width: borderWidth ?? 1,
        ),
        color: color ?? backGroundColor,
        boxShadow: boxShadow ?? wboxShadow,
        image: image != null
            ? DecorationImage(image: image!, fit: BoxFit.cover)
            : null,
      ),
      height: constraints == null ? height : null,
      width: constraints == null ? width : null,
      constraints: constraints,
      padding: padding ?? const EdgeInsets.all(10),
      margin: margin ?? const EdgeInsets.symmetric(vertical: 6),
      child: child,
    );
  }
}
