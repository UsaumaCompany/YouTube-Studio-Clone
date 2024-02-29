
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled4/features/common/widgets/stroke_paint.dart';
import 'package:untitled4/features/common/widgets/w_scale_animation%20copy.dart';

import '../../../assets/colors/colors.dart';

class ZTextFormField extends StatefulWidget {
  final bool? hasBorderColor;
  final AutovalidateMode? autoValidateMode;
  final String? Function(String?)? validate;
  final Color? disabledBorderColor;
  final TextStyle? textStyle;
  final String? hintText;
  final TextStyle? hintTextStyle;
  final bool? hideCounterText;
  final Widget? prefixIcon;
  final EdgeInsets? prefixPadding;
  final int? maxLength;
  final TextInputType? keyBoardType;
  final bool? isObscure;
  final Widget? suffix;
  final String? suffixIcon;
  final EdgeInsets? suffixPadding;
  final TextCapitalization textCapitalization;
  final ValueChanged<String> onChanged;
  final TextEditingController? controller;
  final List<TextInputFormatter>? textInputFormatters;
  final EdgeInsets? contentPadding;
  final bool hasError;
  final EdgeInsets? margin;
  final VoidCallback? onEyeTap;
  final FocusNode? focusNode;
  final TextAlign textAlign;
  final TextInputAction textInputAction;
  final Function? onObscure;
  final Function? onTapSuffix;
  final Function()? onEditCompleted;
  final Function()? onTap;
  final bool autoFocus;
  final double? suffixRightPosition;
  final double? suffixSize;
  final int? maxLines;
  final int? minLines;
  final bool? hasSearch;
  final Color? borderColor;
  final Color? enabledBorderColor;
  final Color? focusColor;
  final bool readOnly;
  final Widget? suffixTitleWidget;
  final double? height;
  final MaxLengthEnforcement? maxLengthEnforcement;
  final TextAlignVertical? textAlignVertical;

  const ZTextFormField({
    required this.onChanged,
    this.controller,
    this.hasBorderColor,
    this.readOnly = false,
    this.hasSearch,
    this.validate,
    this.maxLengthEnforcement,
    this.autoValidateMode,
    this.hideCounterText,
    this.autoFocus = false,
    this.disabledBorderColor,
    this.textAlign = TextAlign.start,
    this.textStyle,
    this.hintText,
    this.hintTextStyle,
    this.contentPadding = const EdgeInsets.all(12),
    this.prefixIcon,
    this.prefixPadding = const EdgeInsets.all(2),
    this.suffix,
    this.suffixIcon,
    this.suffixPadding = const EdgeInsets.all(8),
    this.isObscure,
    this.onEyeTap,
    this.margin,
    this.hasError = false,
    this.textInputFormatters,
    this.textCapitalization = TextCapitalization.none,
    this.keyBoardType,
    this.maxLength,
    this.height,
    this.focusNode,
    this.textInputAction = TextInputAction.done,
    this.onObscure,
    this.onTapSuffix,
    this.onEditCompleted,
    this.onTap,
    this.suffixRightPosition,
    this.suffixSize,
    this.maxLines = 1,
    this.borderColor,
    this.textAlignVertical,
    this.enabledBorderColor,
    this.focusColor,
    this.suffixTitleWidget,
    this.minLines,
    Key? key,
  }) : super(key: key);

  @override
  State<ZTextFormField> createState() => _ZTextFormFieldState();
}

class _ZTextFormFieldState extends State<ZTextFormField>
    with SingleTickerProviderStateMixin {
  late FocusNode focusNode;
  bool focused = false;
  bool hasText = false;
  bool isObscure = false;
  bool showStroke = false;
  late AnimationController animationController;

  @override
  void initState() {
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 200));
    animationController.forward();

    super.initState();
    if (widget.isObscure != null) {
      isObscure = widget.isObscure!;
    }
    focusNode = FocusNode();

    focusNode.addListener(
      () => setState(() {
        focused = !focused;
      }),
    );
  }

  @override
  void dispose() {
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Stack(
        children: [
          SizedBox(
            height: widget.height ?? 48,
            child: TextFormField(
              controller: widget.controller,
              readOnly: widget.readOnly,
              maxLengthEnforcement: widget.maxLengthEnforcement,
              textAlignVertical: widget.textAlignVertical,
              focusNode: widget.focusNode ?? focusNode,
              autofocus: widget.autoFocus,
              onChanged: widget.onChanged,
              obscureText: isObscure,
              validator: widget.validate,
              textInputAction: widget.textInputAction,
              style: widget.textStyle ??
                  Theme.of(context).textTheme.displayLarge!.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: dark,
                      ),
              inputFormatters: widget.textInputFormatters,
              maxLength: widget.maxLength,
              maxLines: isObscure ? 1 : widget.maxLines,
              minLines: widget.minLines,
              cursorColor: dark,
              cursorWidth: 1,
              cursorHeight: 20,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: red),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: red),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    color: widget.hasError ? red : greyText,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide:
                      BorderSide(color: widget.hasError ? red : inputBlue),
                ),
                hintText: widget.hintText,
                hintStyle: widget.hintTextStyle ??
                    Theme.of(context).textTheme.headlineMedium!.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: widget.hasError ? red : greyText,
                        ),
                contentPadding: widget.contentPadding,
                fillColor: white,
                filled: true,
                prefixIconConstraints: const BoxConstraints(maxWidth: 70),
                prefixIcon: widget.prefixIcon,
                counterText:
                    widget.hideCounterText != null && widget.hideCounterText!
                        ? ''
                        : null,
              ),
            ),
          ),
          Positioned(
            right: 8,
            child: widget.isObscure == null
                ? widget.suffixIcon != null
                    ? WScaleAnimation(
                        onTap: () {
                          widget.onTapSuffix!();
                        },
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 10, 2, 2),
                          child: widget.suffix,
                        ),
                      )
                    : const SizedBox()
                : GestureDetector(
                    onTap: () {
                      setState(() {
                        isObscure = !isObscure;
                      });
                      if (isObscure) {
                        animationController.forward();
                      } else {
                        animationController.reverse();
                      }
                    },
                    behavior: HitTestBehavior.opaque,
                    child: Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(top: 12),
                      child: Center(
                        child: AnimatedBuilder(
                          animation: animationController,
                          child: const Icon(CupertinoIcons.eye),
                          builder: (context, child) => SizedBox(
                            width: 24,
                            height: 24,
                            child: CustomPaint(
                              foregroundPainter:
                                  StrokePaint(animationController.value),
                              child: child,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
          ),
        ],
      );
}
