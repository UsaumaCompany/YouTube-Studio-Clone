import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../assets/colors/colors.dart';
import '../../../assets/constants/icons.dart';
import '../widgets/w_button.dart';

class InternetErrorBottomSheet extends StatefulWidget {
  final VoidCallback onTap;

  const InternetErrorBottomSheet({
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  State<InternetErrorBottomSheet> createState() =>
      _InternetErrorBottomSheetState();
}

class _InternetErrorBottomSheetState extends State<InternetErrorBottomSheet> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) => WillPopScope(
        onWillPop: () => Future.value(false),
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
                'NO INTERNET CONNECTION',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.5,
                  color: dark,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 12),
              const Text(
                'Please reload later',
                style: TextStyle(
                  fontSize: 16,
                  letterSpacing: 0.5,
                  color: greyText,
                ),
              ),
              const SizedBox(height: 12),
              WButton(
                isLoading: isLoading,
                onTap: () async {
                  setState(() {
                    isLoading = true;
                  });
                  await Future.delayed(const Duration(seconds: 1));
                  setState(() {
                    isLoading = false;
                  });
                },
                text: 'RELOAD',
              )
            ],
          ),
        ),
      );
}
