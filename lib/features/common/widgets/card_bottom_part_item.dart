
import 'package:flutter/material.dart';

import '../../../assets/themes/theme.dart';
import 'gradient_border.dart';
import 'gradient_icon.dart';

class CardBottomPartItem extends StatelessWidget {
  const CardBottomPartItem(
      {super.key,
      this.count,
      this.icon,
      required this.isActive,
      required this.onTap});

  final int? count;
  final String? icon;
  final bool isActive;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      radius: 4,
      child: GradientBorder(
        width: 0.75,
        borderRadius: 4,
        // colors: isActive
        //     ? const [
        //         AppColors.c1DA1F2,
        //         AppColors.c003CC5,
        //       ]
        //     : [
        //         AppColors.c7F92A0,
        //         AppColors.c7F92A0,
        //       ],
        child: Container(
          height: 32,
          width: 32,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            // gradient: isActive && count != null
            //     ? const LinearGradient(
            //         begin: Alignment.topCenter,
            //         end: Alignment.bottomCenter,
            //         colors: [
            //             AppColors.c1DA1F2,
            //             AppColors.c003CC5,
            //           ])
            //     : null
          ),
          child: Center(
            child: count != null
                ? Text(
                    count!.toString(),
                    style: AppTheme.labelMedium,
                  )
                : GradientIcon(
                    iconName: icon!,
                  ),
          ),
        ),
      ),
    );
  }
}
