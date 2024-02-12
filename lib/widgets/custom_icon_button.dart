import 'package:flutter/material.dart';
import '../core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.alignment,
    this.height,
    this.width,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final double? height;

  final double? width;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
        height: height ?? 0,
        width: width ?? 0,
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: Container(
            height: height ?? 0,
            width: width ?? 0,
            padding: padding ?? EdgeInsets.zero,
            decoration: decoration ??
                BoxDecoration(
                  borderRadius: BorderRadius.circular(10.h),
                  border: Border.all(
                    color: appTheme.gray200,
                    width: 1.h,
                  ),
                ),
            child: child,
          ),
          onPressed: onTap,
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(18.h),
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        border: Border.all(
          color: appTheme.gray90001,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGrayTL10 => BoxDecoration(
        color: appTheme.whiteA700,
        borderRadius: BorderRadius.circular(10.h),
        border: Border.all(
          color: appTheme.gray200,
          width: 1.h,
        ),
      );
  static BoxDecoration get fillBlue => BoxDecoration(
        color: appTheme.blue5001,
        borderRadius: BorderRadius.circular(16.h),
      );
  static BoxDecoration get fillGreen => BoxDecoration(
        color: appTheme.green50,
        borderRadius: BorderRadius.circular(16.h),
      );
  static BoxDecoration get outlineBlueGray => BoxDecoration(
        borderRadius: BorderRadius.circular(12.h),
        border: Border.all(
          color: appTheme.blueGray40001,
          width: 2.h,
        ),
      );
  static BoxDecoration get fillRedA => BoxDecoration(
        color: appTheme.redA70001,
        borderRadius: BorderRadius.circular(30.h),
      );
  static BoxDecoration get outlineGrayTL101 => BoxDecoration(
        color: appTheme.whiteA700,
        borderRadius: BorderRadius.circular(10.h),
        border: Border.all(
          color: appTheme.gray10007,
          width: 1.h,
        ),
      );
  static BoxDecoration get gradientBlueAToBlueA => BoxDecoration(
        borderRadius: BorderRadius.circular(28.h),
        gradient: LinearGradient(
          begin: Alignment(0.0, 0),
          end: Alignment(1.0, 1),
          colors: [
            appTheme.blueA400,
            appTheme.blueA400,
          ],
        ),
      );
  static BoxDecoration get fillBlueTL32 => BoxDecoration(
        color: appTheme.blue5001,
        borderRadius: BorderRadius.circular(32.h),
      );
  static BoxDecoration get fillGreenTL32 => BoxDecoration(
        color: appTheme.green50,
        borderRadius: BorderRadius.circular(32.h),
      );
  static BoxDecoration get fillRed => BoxDecoration(
        color: appTheme.red50,
        borderRadius: BorderRadius.circular(32.h),
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700,
        borderRadius: BorderRadius.circular(14.h),
      );
  static BoxDecoration get fillIndigo => BoxDecoration(
        color: appTheme.indigo50,
        borderRadius: BorderRadius.circular(16.h),
      );
  static BoxDecoration get fillIndigoA => BoxDecoration(
        color: appTheme.indigoA100,
        borderRadius: BorderRadius.circular(16.h),
      );
}
