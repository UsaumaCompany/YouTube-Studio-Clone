import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import '../../../assets/colors/colors.dart';

class WShimmer extends StatelessWidget {
  const WShimmer({
    Key? key,
    this.width,
    this.height,
    this.radius,
  }) : super(key: key);

  final double? width;
  final double? height;
  final double? radius;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: whiteSmoke,
      highlightColor: whiteGrey,
      child: Container(
        height: height ?? double.infinity,
        width: width ?? double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius ?? 12),
          color: white,
        ),
      ),
    );
  }
}
