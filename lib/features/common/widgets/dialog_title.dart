import 'package:flutter/material.dart';
import 'package:untitled4/features/common/widgets/w_scale_animation%20copy.dart';

import '../../../assets/colors/colors.dart';
import '../../../assets/themes/theme.dart';

class DialogTitle extends StatelessWidget {
  const DialogTitle({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: AppTheme.bodyMedium
                  .copyWith(fontSize: 20, fontWeight: FontWeight.w700),
            ),
            WScaleAnimation(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(Icons.close, color: greyText),
            ),
          ],
        ),
        const SizedBox(height: 8),
        const Divider(height: 1, color: greyText),
        const SizedBox(height: 16),
      ],
    );
  }
}
