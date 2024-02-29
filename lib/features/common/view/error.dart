import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../assets/colors/colors.dart';
import '../../../assets/constants/icons.dart';
import '../widgets/w_button.dart';

class ErrorScreen extends StatelessWidget {
  final String? error;
  const ErrorScreen({Key? key, this.error}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(error ?? "Error"),
      ),
      body: Center(
        child: Container(
          width: 368,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: white,
            boxShadow: wboxShadow,
          ),
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset(
                AppIcons.settings,
                height: 262,
                width: 320,
              ),
              const SizedBox(height: 12),
              const Text(
                'Hech narsa topilmadi',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.5,
                  color: dark,
                ),
              ),
              const SizedBox(height: 12),
              const Text(
                'Rahbariyatga murojaat qiling',
                style: TextStyle(
                  fontSize: 16,
                  letterSpacing: 0.5,
                  color: greyText,
                ),
              ),
              const SizedBox(height: 12),
              WButton(
                onTap: () {},
                text: "Refresh",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
