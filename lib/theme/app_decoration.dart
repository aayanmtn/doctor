import 'package:flutter/material.dart';
import 'package:aayan_mateen_s_application1/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillAmberA => BoxDecoration(
        color: appTheme.amberA400,
      );
  static BoxDecoration get fillAmberA200 => BoxDecoration(
        color: appTheme.amberA200,
      );
  static BoxDecoration get fillBlueA => BoxDecoration(
        color: appTheme.blueA400,
      );
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray10004,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray5001,
      );
  static BoxDecoration get fillGray100 => BoxDecoration(
        color: appTheme.gray100,
      );
  static BoxDecoration get fillGray10001 => BoxDecoration(
        color: appTheme.gray10001,
      );
  static BoxDecoration get fillGray10004 => BoxDecoration(
        color: appTheme.gray10004,
      );
  static BoxDecoration get fillGray10008 => BoxDecoration(
        color: appTheme.gray10008,
      );
  static BoxDecoration get fillGray20001 => BoxDecoration(
        color: appTheme.gray20001,
      );
  static BoxDecoration get fillGray30002 => BoxDecoration(
        color: appTheme.gray30002,
      );
  static BoxDecoration get fillIndigo => BoxDecoration(
        color: appTheme.indigo5003,
      );
  static BoxDecoration get fillLightBlue => BoxDecoration(
        color: appTheme.lightBlue200.withOpacity(0.15),
      );
  static BoxDecoration get fillLightGreen => BoxDecoration(
        color: appTheme.lightGreen50,
      );
  static BoxDecoration get fillLime => BoxDecoration(
        color: appTheme.lime50,
      );
  static BoxDecoration get fillRed => BoxDecoration(
        color: appTheme.red5001,
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA70001,
      );

  // Gradient decorations
  static BoxDecoration get gradientWhiteAToWhiteA => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0),
          end: Alignment(0, 1),
          colors: [
            appTheme.whiteA700.withOpacity(0),
            appTheme.whiteA700.withOpacity(0.89),
          ],
        ),
      );
  static BoxDecoration get gradientWhiteAToWhiteA700 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.whiteA700,
            appTheme.whiteA700.withOpacity(0),
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outlineBlack => BoxDecoration(
        color: appTheme.whiteA700,
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack90001 => BoxDecoration(
        color: appTheme.whiteA700,
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.04),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              -5,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack900011 => BoxDecoration(
        color: appTheme.whiteA700,
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.1),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              10,
              10,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack900012 => BoxDecoration(
        color: appTheme.whiteA700,
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.16),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              -2.46,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack900013 => BoxDecoration(
        color: appTheme.whiteA700,
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.13),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              2.21,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack900014 => BoxDecoration(
        color: appTheme.whiteA700,
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.13),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              2,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack900015 => BoxDecoration(
        color: appTheme.whiteA700,
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.03),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              -5,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlueGray => BoxDecoration(
        color: appTheme.whiteA700,
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray500.withOpacity(0.05),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              8.65,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineDeepOrangeA => BoxDecoration(
        color: appTheme.whiteA700,
        boxShadow: [
          BoxShadow(
            color: appTheme.deepOrangeA20026,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              5.9,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: appTheme.gray200,
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlineGray10001 => BoxDecoration(
        color: appTheme.gray10001,
        border: Border.all(
          color: appTheme.gray10001,
          width: 2.h,
        ),
      );
  static BoxDecoration get outlineGray10008 => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border(
          top: BorderSide(
            color: appTheme.gray10008,
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlineGray100081 => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border(
          top: BorderSide(
            color: appTheme.gray10008,
            width: 1.h,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.13),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              -4.49,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray20002 => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border.all(
          color: appTheme.gray20002,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray20005 => BoxDecoration(
        border: Border.all(
          color: appTheme.gray20005,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineIndigoA => BoxDecoration(
        color: theme.colorScheme.primary,
        boxShadow: [
          BoxShadow(
            color: appTheme.indigoA20011,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              12,
              26,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineIndigoA400 => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border.all(
          color: appTheme.indigoA400,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineIndigoA4001 => BoxDecoration(
        color: appTheme.indigo5001,
      );
  static BoxDecoration get outlineLightBlueAD => BoxDecoration(
        color: theme.colorScheme.primary,
        boxShadow: [
          BoxShadow(
            color: appTheme.lightBlueA2003d,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              10,
            ),
          ),
        ],
      );
  static BoxDecoration get outlinePrimary => BoxDecoration(
        color: theme.colorScheme.primary,
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 2.h,
        ),
      );
  static BoxDecoration get outlinePrimary1 => BoxDecoration(
        color: appTheme.orange4000c,
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 1.h,
        ),
      );

  // Primary decorations
  static BoxDecoration get primaryBlue => BoxDecoration(
        color: theme.colorScheme.primary,
      );

  // White decorations
  static BoxDecoration get white => BoxDecoration(
        color: appTheme.whiteA700,
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder25 => BorderRadius.circular(
        25.h,
      );
  static BorderRadius get circleBorder38 => BorderRadius.circular(
        38.h,
      );
  static BorderRadius get circleBorder41 => BorderRadius.circular(
        41.h,
      );
  static BorderRadius get circleBorder71 => BorderRadius.circular(
        71.h,
      );

  // Custom borders
  static BorderRadius get customBorderBL12 => BorderRadius.vertical(
        bottom: Radius.circular(12.h),
      );
  static BorderRadius get customBorderBL20 => BorderRadius.only(
        topRight: Radius.circular(20.h),
        bottomLeft: Radius.circular(20.h),
        bottomRight: Radius.circular(20.h),
      );
  static BorderRadius get customBorderBL35 => BorderRadius.vertical(
        bottom: Radius.circular(35.h),
      );
  static BorderRadius get customBorderTL20 => BorderRadius.only(
        topLeft: Radius.circular(20.h),
        bottomLeft: Radius.circular(20.h),
        bottomRight: Radius.circular(20.h),
      );
  static BorderRadius get customBorderTL201 => BorderRadius.horizontal(
        left: Radius.circular(20.h),
      );
  static BorderRadius get customBorderTL25 => BorderRadius.vertical(
        top: Radius.circular(25.h),
      );
  static BorderRadius get customBorderTL30 => BorderRadius.vertical(
        top: Radius.circular(30.h),
      );
  static BorderRadius get customBorderTL35 => BorderRadius.vertical(
        top: Radius.circular(35.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder1 => BorderRadius.circular(
        1.h,
      );
  static BorderRadius get roundedBorder12 => BorderRadius.circular(
        12.h,
      );
  static BorderRadius get roundedBorder16 => BorderRadius.circular(
        16.h,
      );
  static BorderRadius get roundedBorder20 => BorderRadius.circular(
        20.h,
      );
  static BorderRadius get roundedBorder34 => BorderRadius.circular(
        34.h,
      );
  static BorderRadius get roundedBorder8 => BorderRadius.circular(
        8.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.
    
// For Flutter SDK Version 3.7.2 or greater.
    
double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
    