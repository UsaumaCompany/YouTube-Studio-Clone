import 'package:flutter/material.dart';
import 'package:untitled4/features/common/widgets/w_container.dart';

class WFormInformation extends StatelessWidget {
  final Widget title;
  final List<Widget> children;
  final EdgeInsets? padding;

  const WFormInformation({
    super.key,
    this.padding,
    required this.title,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return WContainer(
      width: double.maxFinite,
      padding: EdgeInsets.all(20),
      margin: padding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          title,
          ...children,
        ],
      ),
    );
  }
}
