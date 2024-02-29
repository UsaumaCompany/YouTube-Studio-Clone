
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled4/features/common/widgets/w_keyboard_dissmisser.dart';

import '../../../assets/colors/colors.dart';
import '../../../assets/themes/theme.dart';
import '../controllers/show_pop_up/show_pop_up_bloc.dart';

class CustomScreen extends StatelessWidget {
  final Widget child;

  const CustomScreen({required this.child, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return BlocBuilder<ShowPopUpBloc, ShowPopUpState>(
      builder: (context, state) => Material(
        child: Stack(
          children: [
            Positioned.fill(child: WKeyboardDismisser(child: child)),
            AnimatedPositioned(
              top: state.showPopUp
                  ? MediaQuery.of(context).padding.top + 48
                  : -(MediaQuery.of(context).padding.top + 48 + 92),
              duration: const Duration(milliseconds: 300),
              height: size.width >= 601
                  ? 88
                  : state.message.length > 28
                      ? 88
                      : 56,
              left: (MediaQuery.of(context).size.width - 400) / 2,
              right: (MediaQuery.of(context).size.width - 400) / 2,
              child: Container(
                padding: EdgeInsets.symmetric(
                  vertical: size.width >= 601 ? 32 : 12,
                  horizontal: 16,
                ),
                margin: const EdgeInsets.symmetric(horizontal: 32),
                decoration: BoxDecoration(
                  color: statusColor(state.status),
                  borderRadius: BorderRadius.circular(8),
                ),
                alignment: Alignment.center,
                child: Text(
                  state.message,
                  style: AppTheme.bodyMedium.copyWith(
                    fontWeight: FontWeight.w400,
                    color: white,
                  ),
                  maxLines: 3,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Color statusColor(PopStatus status) {
    switch (status) {
      case PopStatus.success:
        return green;
      case PopStatus.error:
        return red;
      case PopStatus.warning:
        return Colors.orange;
    }
  }
}
