
import 'package:flutter/material.dart';

import '../../../assets/colors/colors.dart';
import '../../../assets/themes/theme.dart';

class BottomSheetWidget extends StatelessWidget {
  final List<Widget> children;
  final Color? backgroundColor;
  final double? horizontal;
  final String? title;
  final bool? isExpanded;
  final bool? isExpandedWithoutScroll;
  const BottomSheetWidget({
    super.key,
    required this.children,
    this.backgroundColor,
    this.horizontal,
    this.title,
    this.isExpanded,
    this.isExpandedWithoutScroll,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Positioned(
            top: 0,
            child: Container(
              width: 40,
              height: 4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(27),
                color: white,
              ),
            ),
          ),
          ClipPath(
              clipper: MyClip(),
              child: Container(
                constraints: BoxConstraints(
                    maxHeight: MediaQuery.sizeOf(context).height * .9),
                padding: EdgeInsets.symmetric(horizontal: horizontal ?? 0),
                decoration: BoxDecoration(
                    color: backgroundColor ?? white,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        height: 40,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(20))),
                      ),
                      if (title != null)
                        Text(
                          title ?? 'unknown',
                          style: AppTheme.bodyMedium,
                        ),
                      (isExpanded ?? false)
                          ? Expanded(
                              child: SingleChildScrollView(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: children,
                                ),
                              ),
                            )
                          : (isExpandedWithoutScroll ?? false)
                              ? Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: children,
                                  ),
                                )
                              : Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: children,
                                ),
                    ]),
              )),
        ],
      ),
    );
  }
}

class BottomSheetWidgetHeight extends StatelessWidget {
  final List<Widget> children;
  const BottomSheetWidgetHeight({super.key, required this.children});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Positioned(
              top: 0,
              child: Container(
                width: 40,
                height: 4,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(27), color: orang),
              )),
          ClipPath(
              clipper: MyClip(),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.9,
                decoration: const BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: children,
                  ),
                ),
              )),
        ],
      ),
    );
  }
}

class MyClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path0 = Path();
    path0.moveTo(0, 0);
    path0.lineTo(0, size.height);
    path0.lineTo(size.width, size.height);
    path0.lineTo(size.width, 0);
    path0.lineTo(size.width * 0.5923077, 0);

    path0.quadraticBezierTo(size.width * 0.5800000, size.height * 0.0008857,
        size.width * 0.5615385, 9);

    path0.quadraticBezierTo(
        size.width * 0.5562051, 12, size.width * 0.5000513, 12);

    path0.quadraticBezierTo(
        size.width * 0.4427179, 12, size.width * 0.4384615, 9);

    path0.quadraticBezierTo(size.width * 0.4232051, size.height * 0.0009143,
        size.width * 0.4075897, 0);

    return path0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
