import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillAmberA => ElevatedButton.styleFrom(
        backgroundColor: appTheme.amberA400,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.horizontal(
            left: Radius.circular(
              20.h,
            ),
          ),
        ),
      );
  static ButtonStyle get fillBlueA => ElevatedButton.styleFrom(
        backgroundColor: appTheme.blueA700,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.h),
        ),
      );
  static ButtonStyle get fillBlueABL20 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.blueA400,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(
              20.h,
            ),
            bottomLeft: Radius.circular(
              20.h,
            ),
            bottomRight: Radius.circular(
              20.h,
            ),
          ),
        ),
      );
  static ButtonStyle get fillBlueATL16 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.blueA400,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.h),
        ),
      );
  static ButtonStyle get fillBlueATL20 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.blueA400,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(
              20.h,
            ),
            bottomLeft: Radius.circular(
              20.h,
            ),
            bottomRight: Radius.circular(
              20.h,
            ),
          ),
        ),
      );
  static ButtonStyle get fillBlueATL6 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.blueA400,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6.h),
        ),
      );
  static ButtonStyle get fillGray => ElevatedButton.styleFrom(
        backgroundColor: appTheme.gray10001,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6.h),
        ),
      );
  static ButtonStyle get fillPrimary => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.h),
        ),
      );
  static ButtonStyle get fillPrimaryTL16 => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.h),
        ),
      );
  static ButtonStyle get fillPrimaryTL26 => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(26.h),
        ),
      );
  static ButtonStyle get fillPrimaryTL31 => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(31.h),
        ),
      );
  static ButtonStyle get fillPrimaryTL8 => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.h),
        ),
      );
  static ButtonStyle get fillWhiteA => ElevatedButton.styleFrom(
        backgroundColor: appTheme.whiteA700,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(9.h),
        ),
      );
  static ButtonStyle get fillWhiteA1 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.whiteA700,
      );

  // Outline button style
  static ButtonStyle get outlineBlueA => OutlinedButton.styleFrom(
        backgroundColor: Colors.transparent,
        side: BorderSide(
          color: appTheme.blueA400,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(19.h),
        ),
      );
  static ButtonStyle get outlineGray => OutlinedButton.styleFrom(
        backgroundColor: Colors.transparent,
        side: BorderSide(
          color: appTheme.gray200,
          width: 1,
        ),
        shape: RoundedRectangleBorder(),
      );
  static ButtonStyle get outlineGrayTL24 => OutlinedButton.styleFrom(
        backgroundColor: appTheme.gray10001,
        side: BorderSide(
          color: appTheme.gray10001,
          width: 2,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24.h),
        ),
      );
  static ButtonStyle get outlineIndigoA => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.h),
        ),
        shadowColor: appTheme.indigoA70033,
        elevation: 5,
      );
  static ButtonStyle get outlineIndigoATL20 => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.h),
        ),
        shadowColor: appTheme.indigoA70033,
        elevation: 5,
      );
  static ButtonStyle get outlineIndigoATL23 => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(23.h),
        ),
        shadowColor: appTheme.indigoA70033,
        elevation: 6,
      );
  static ButtonStyle get outlinePrimaryTL26 => OutlinedButton.styleFrom(
        backgroundColor: Colors.transparent,
        side: BorderSide(
          color: theme.colorScheme.primary,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(26.h),
        ),
      );
  static ButtonStyle get outlinePrimaryTL7 => OutlinedButton.styleFrom(
        backgroundColor: appTheme.whiteA700,
        side: BorderSide(
          color: theme.colorScheme.primary,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(7.h),
        ),
      );
  static ButtonStyle get outlineWhiteA => OutlinedButton.styleFrom(
        backgroundColor: Colors.transparent,
        side: BorderSide(
          color: appTheme.whiteA700,
          width: 2,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.h),
        ),
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
