import 'package:flutter/material.dart';

import '../../../assets/themes/theme.dart';

class WTile extends StatelessWidget {
  final String title;
  final String subtitle;
  const WTile({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      minVerticalPadding: 10,
      contentPadding: EdgeInsets.zero,
      title: Text(
        title,
        style: AppTheme.bodyMedium.copyWith(
          fontWeight: FontWeight.w600,
        ),
      ),
      subtitle: Text(
        subtitle,
        style: AppTheme.titleLarge.copyWith(
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
