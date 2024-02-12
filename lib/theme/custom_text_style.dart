import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeAbelPrimaryContainer =>
      theme.textTheme.bodyLarge!.abel.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get bodyLargeAcmeWhiteA70001 =>
      theme.textTheme.bodyLarge!.acme.copyWith(
        color: appTheme.whiteA70001,
        fontSize: 18.fSize,
      );
  static get bodyLargeBlack90001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black90001.withOpacity(0.45),
      );
  static get bodyLargeBluegray700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray700,
        fontSize: 18.fSize,
      );
  static get bodyLargeBluegray90001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray90001.withOpacity(0.45),
      );
  static get bodyLargeIndigoA400 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.indigoA400,
      );
  static get bodyLargeInterGray300 => theme.textTheme.bodyLarge!.inter.copyWith(
        color: appTheme.gray300,
      );
  static get bodyLargeInterGray400 => theme.textTheme.bodyLarge!.inter.copyWith(
        color: appTheme.gray400,
      );
  static get bodyLargeInterRedA70002 =>
      theme.textTheme.bodyLarge!.inter.copyWith(
        color: appTheme.redA70002,
      );
  static get bodyLargeInterSecondaryContainer =>
      theme.textTheme.bodyLarge!.inter.copyWith(
        color: theme.colorScheme.secondaryContainer,
      );
  static get bodyLargeInterWhiteA700 =>
      theme.textTheme.bodyLarge!.inter.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodyLargeNunitoSans => theme.textTheme.bodyLarge!.nunitoSans;
  static get bodyLargeff504de5 => theme.textTheme.bodyLarge!.copyWith(
        color: Color(0XFF504DE5),
      );
  static get bodyLargeff504de5_1 => theme.textTheme.bodyLarge!.copyWith(
        color: Color(0XFF504DE5),
      );
  static get bodyMediumAcmeWhiteA70001 =>
      theme.textTheme.bodyMedium!.acme.copyWith(
        color: appTheme.whiteA70001,
      );
  static get bodyMediumBeVietnamProGray600 =>
      theme.textTheme.bodyMedium!.beVietnamPro.copyWith(
        color: appTheme.gray600,
        fontSize: 15.fSize,
      );
  static get bodyMediumGray50001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray50001,
      );
  static get bodyMediumGray60002 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray60002,
      );
  static get bodyMediumLatoGray900 => theme.textTheme.bodyMedium!.lato.copyWith(
        color: appTheme.gray900,
      );
  static get bodyMediumMontserratOnErrorContainer =>
      theme.textTheme.bodyMedium!.montserrat.copyWith(
        color: theme.colorScheme.onErrorContainer,
      );
  static get bodyMediumNunitoSansBluegray70001 =>
      theme.textTheme.bodyMedium!.nunitoSans.copyWith(
        color: appTheme.blueGray70001,
      );
  static get bodyMediumOverpassBlueA70001 =>
      theme.textTheme.bodyMedium!.overpass.copyWith(
        color: appTheme.blueA70001,
      );
  static get bodyMediumOverpassBluegray90001 =>
      theme.textTheme.bodyMedium!.overpass.copyWith(
        color: appTheme.blueGray90001,
      );
  static get bodyMediumOverpassBluegray9000113 =>
      theme.textTheme.bodyMedium!.overpass.copyWith(
        color: appTheme.blueGray90001,
        fontSize: 13.fSize,
      );
  static get bodyMediumOverpassBluegray9000113_1 =>
      theme.textTheme.bodyMedium!.overpass.copyWith(
        color: appTheme.blueGray90001.withOpacity(0.45),
        fontSize: 13.fSize,
      );
  static get bodyMediumOverpassBluegray90001Light =>
      theme.textTheme.bodyMedium!.overpass.copyWith(
        color: appTheme.blueGray90001.withOpacity(0.45),
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumOverpassBluegray90001_1 =>
      theme.textTheme.bodyMedium!.overpass.copyWith(
        color: appTheme.blueGray90001.withOpacity(0.45),
      );
  static get bodyMediumOverpassBluegray900b2 =>
      theme.textTheme.bodyMedium!.overpass.copyWith(
        color: appTheme.blueGray900B2,
      );
  static get bodyMediumOverpassIndigoA40001 =>
      theme.textTheme.bodyMedium!.overpass.copyWith(
        color: appTheme.indigoA40001,
      );
  static get bodyMediumPoppinsBlack900 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.black900,
        fontSize: 15.fSize,
      );
  static get bodyMediumPoppinsBluegray30001 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.blueGray30001,
      );
  static get bodyMediumPoppinsBluegray40001 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.blueGray40001,
      );
  static get bodyMediumPoppinsBluegray4000113 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.blueGray40001,
        fontSize: 13.fSize,
      );
  static get bodyMediumPoppinsBluegray40001_1 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.blueGray40001,
      );
  static get bodyMediumPoppinsBluegray40001_2 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.blueGray40001,
      );
  static get bodyMediumPoppinsBluegray700 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.blueGray700,
      );
  static get bodyMediumPoppinsBluegray70015 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.blueGray700,
        fontSize: 15.fSize,
      );
  static get bodyMediumPoppinsBluegray700_1 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.blueGray700,
      );
  static get bodyMediumPoppinsBluegray90001 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.blueGray90001.withOpacity(0.45),
        fontSize: 15.fSize,
      );
  static get bodyMediumPoppinsGray40001 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.gray40001,
      );
  static get bodyMediumPoppinsGray90003 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.gray90003,
      );
  static get bodyMediumPoppinsIndigoA400 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.indigoA400,
        fontSize: 13.fSize,
      );
  static get bodyMediumPoppinsWhiteA700 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodyMediumPoppinsff504de5 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: Color(0XFF504DE5),
        fontSize: 13.fSize,
      );
  static get bodyMediumPoppinsff504de513 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: Color(0XFF504DE5),
        fontSize: 13.fSize,
      );
  static get bodyMediumPoppinsff6f8ba4 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: Color(0XFF6F8BA4),
        fontSize: 13.fSize,
      );
  static get bodyMediumPoppinsff6f8ba413 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: Color(0XFF6F8BA4),
        fontSize: 13.fSize,
      );
  static get bodyMediumPoppinsffffffff =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: Color(0XFFFFFFFF),
      );
  static get bodyMediumPoppinsffffffff_1 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: Color(0XFFFFFFFF),
      );
  static get bodyMediumWhiteA700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodySmall10 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 10.fSize,
      );
  static get bodySmallBlueA400 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueA400,
      );
  static get bodySmallGray50001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray50001,
      );
  static get bodySmallGray700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray700.withOpacity(0.64),
        fontSize: 10.fSize,
      );
  static get bodySmallGray90002 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray90002,
        fontSize: 10.fSize,
      );
  static get bodySmallGray90002_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray90002,
      );
  static get bodySmallGray90002_2 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray90002.withOpacity(0.6),
      );
  static get bodySmallGray90002_3 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray90002,
      );
  static get bodySmallGreenA700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.greenA700,
      );
  static get bodySmallGreenA70002 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.greenA70002,
      );
  static get bodySmallLatoGray900 => theme.textTheme.bodySmall!.lato.copyWith(
        color: appTheme.gray900,
        fontSize: 11.fSize,
      );
  static get bodySmallLatoRedA70002 => theme.textTheme.bodySmall!.lato.copyWith(
        color: appTheme.redA70002,
        fontSize: 11.fSize,
      );
  static get bodySmallLatoWhiteA700 => theme.textTheme.bodySmall!.lato.copyWith(
        color: appTheme.whiteA700,
        fontSize: 11.fSize,
      );
  static get bodySmallOverpassBluegray90001 =>
      theme.textTheme.bodySmall!.overpass.copyWith(
        color: appTheme.blueGray90001.withOpacity(0.75),
      );
  static get bodySmallOverpassPrimary =>
      theme.textTheme.bodySmall!.overpass.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodySmallPoppinsBluegray200 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.blueGray200,
      );
  static get bodySmallPoppinsBluegray40001 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.blueGray40001,
      );
  static get bodySmallPoppinsBluegray40001_1 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.blueGray40001,
      );
  static get bodySmallPoppinsBluegray40001_2 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.blueGray40001,
      );
  static get bodySmallPoppinsBluegray700 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.blueGray700,
        fontSize: 10.fSize,
      );
  static get bodySmallPoppinsBluegray700_1 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.blueGray700,
      );
  static get bodySmallPoppinsIndigoA400 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.indigoA400,
      );
  static get bodySmallPoppinsWhiteA700 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.whiteA700,
        fontSize: 8.fSize,
      );
  static get bodySmallPoppinsff3b566e =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: Color(0XFF3B566E),
      );
  static get bodySmallPoppinsff3b566e_1 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: Color(0XFF3B566E),
      );
  static get bodySmallPoppinsff6f8ba4 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: Color(0XFF6F8BA4),
      );
  static get bodySmallPoppinsff6f8ba4_1 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: Color(0XFF6F8BA4),
      );
  static get bodySmallPoppinsff6f8ba4_2 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: Color(0XFF6F8BA4),
      );
  static get bodySmallRedA200 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.redA200,
      );
  static get bodySmallRobotoBluegray800 =>
      theme.textTheme.bodySmall!.roboto.copyWith(
        color: appTheme.blueGray800,
        fontSize: 10.fSize,
      );
  static get bodySmallWhiteA700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 10.fSize,
      );
  static get bodySmall_1 => theme.textTheme.bodySmall!;
  static get bodySmallff616161 => theme.textTheme.bodySmall!.copyWith(
        color: Color(0XFF616161),
      );
  // Display text style
  static get displayMediumBeVietnamProWhiteA700 =>
      theme.textTheme.displayMedium!.beVietnamPro.copyWith(
        color: appTheme.whiteA700,
        fontSize: 41.fSize,
      );
  static get displaySmallMontserratBlack90001 =>
      theme.textTheme.displaySmall!.montserrat.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w700,
      );
  // Headline text style
  static get headlineLargeOverpassBlack90001 =>
      theme.textTheme.headlineLarge!.overpass.copyWith(
        color: appTheme.black90001,
        fontSize: 33.fSize,
        fontWeight: FontWeight.w600,
      );
  static get headlineSmallLatoGray50 =>
      theme.textTheme.headlineSmall!.lato.copyWith(
        color: appTheme.gray50,
      );
  static get headlineSmallPoppinsBlack90001 =>
      theme.textTheme.headlineSmall!.poppins.copyWith(
        color: appTheme.black90001,
        fontSize: 25.fSize,
        fontWeight: FontWeight.w900,
      );
  static get headlineSmallPoppinsBluegray90003 =>
      theme.textTheme.headlineSmall!.poppins.copyWith(
        color: appTheme.blueGray90003,
        fontWeight: FontWeight.w900,
      );
  static get headlineSmallPoppinsWhiteA700 =>
      theme.textTheme.headlineSmall!.poppins.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w600,
      );
  // Label text style
  static get labelLargeBeVietnamProGray900 =>
      theme.textTheme.labelLarge!.beVietnamPro.copyWith(
        color: appTheme.gray900,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeBeVietnamProWhiteA700 =>
      theme.textTheme.labelLarge!.beVietnamPro.copyWith(
        color: appTheme.whiteA700,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeInter => theme.textTheme.labelLarge!.inter;
  static get labelLargeInterGray400 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appTheme.gray400,
      );
  static get labelLargeInterPrimary =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeInterWhiteA700 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeInter_1 => theme.textTheme.labelLarge!.inter;
  static get labelLargeLatoGray900 => theme.textTheme.labelLarge!.lato.copyWith(
        color: appTheme.gray900,
        fontWeight: FontWeight.w900,
      );
  static get labelLargeLatoWhiteA700 =>
      theme.textTheme.labelLarge!.lato.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w800,
      );
  static get labelLargeManropeGray50001 =>
      theme.textTheme.labelLarge!.manrope.copyWith(
        color: appTheme.gray50001,
      );
  static get labelLargeMontserratBlack90001 =>
      theme.textTheme.labelLarge!.montserrat.copyWith(
        color: appTheme.black90001,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeMontserratBluegray40002 =>
      theme.textTheme.labelLarge!.montserrat.copyWith(
        color: appTheme.blueGray40002,
      );
  static get labelLargeMontserratWhiteA700 =>
      theme.textTheme.labelLarge!.montserrat.copyWith(
        color: appTheme.whiteA700,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeMontserratWhiteA700SemiBold =>
      theme.textTheme.labelLarge!.montserrat.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeOverpassWhiteA700 =>
      theme.textTheme.labelLarge!.overpass.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeOverpassWhiteA700Bold =>
      theme.textTheme.labelLarge!.overpass.copyWith(
        color: appTheme.whiteA700,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelLargePoppinsBluegray500 =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: appTheme.blueGray500,
        fontWeight: FontWeight.w900,
      );
  static get labelLargePoppinsBluegray90003 =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: appTheme.blueGray90003,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargePoppinsGray60001 =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: appTheme.gray60001,
        fontWeight: FontWeight.w600,
      );
  static get labelLargePoppinsPrimary =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get labelLargePoppinsWhiteA700 =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: appTheme.whiteA700,
      );
  static get labelLargePoppinsWhiteA700Bold =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w700,
      );
  static get labelLargePoppinsWhiteA700SemiBold =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w600,
      );
  static get labelLargePoppinsWhiteA700SemiBold_1 =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w600,
      );
  static get labelLargePoppinsff0e82fd =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: Color(0XFF0E82FD),
        fontWeight: FontWeight.w600,
      );
  static get labelLargePoppinsff367cff =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: Color(0XFF367CFF),
        fontWeight: FontWeight.w600,
      );
  static get labelLargePoppinsff3a7bc8 =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: Color(0XFF3A7BC8),
        fontWeight: FontWeight.w600,
      );
  static get labelLargePoppinsff6b6c70 =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: Color(0XFF6B6C70),
        fontWeight: FontWeight.w600,
      );
  static get labelMediumBeVietnamProWhiteA700 =>
      theme.textTheme.labelMedium!.beVietnamPro.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumBlack90001 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.black90001.withOpacity(0.75),
      );
  static get labelMediumBlack9000111 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.black90001.withOpacity(0.7),
        fontSize: 11.fSize,
      );
  static get labelMediumInterGray60002 =>
      theme.textTheme.labelMedium!.inter.copyWith(
        color: appTheme.gray60002,
        fontWeight: FontWeight.w500,
      );
  static get labelMediumOverpassWhiteA700 =>
      theme.textTheme.labelMedium!.overpass.copyWith(
        color: appTheme.whiteA700,
        fontSize: 11.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumPoppinsBluegray500 =>
      theme.textTheme.labelMedium!.poppins.copyWith(
        color: appTheme.blueGray500,
      );
  // Poppins text style
  static get poppinsWhiteA700 => TextStyle(
        color: appTheme.whiteA700,
        fontSize: 7.fSize,
        fontWeight: FontWeight.w400,
      ).poppins;
  // Title text style
  static get titleLargeBeVietnamProGray900 =>
      theme.textTheme.titleLarge!.beVietnamPro.copyWith(
        color: appTheme.gray900,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeBlack90001 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black90001,
      );
  static get titleLargeBlack90001_1 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black90001,
      );
  static get titleLargeBluegray700 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.blueGray700,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeBluegray900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.blueGray900,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeBluegray90001 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.blueGray90001,
      );
  static get titleLargeIndigoA400 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.indigoA400,
        fontSize: 22.fSize,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeInter => theme.textTheme.titleLarge!.inter.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleLargeInterBluegray90002 =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: appTheme.blueGray90002,
        fontSize: 21.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeInterBluegray90002_1 =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: appTheme.blueGray90002,
      );
  static get titleLargeInterGray90002 =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: appTheme.gray90002,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeInterGray9000221 =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: appTheme.gray90002,
        fontSize: 21.fSize,
      );
  static get titleLargeInterPrimary =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeLatoGray50 => theme.textTheme.titleLarge!.lato.copyWith(
        color: appTheme.gray50,
        fontSize: 21.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeMontserrat =>
      theme.textTheme.titleLarge!.montserrat.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleLargeOverpassBluegray90001 =>
      theme.textTheme.titleLarge!.overpass.copyWith(
        color: appTheme.blueGray90001,
        fontSize: 22.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleLargePrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleLargeff504de5 => theme.textTheme.titleLarge!.copyWith(
        color: Color(0XFF504DE5),
        fontSize: 22.fSize,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeff504de5Regular => theme.textTheme.titleLarge!.copyWith(
        color: Color(0XFF504DE5),
        fontSize: 22.fSize,
        fontWeight: FontWeight.w400,
      );
  static get titleMediumBeVietnamProGray900 =>
      theme.textTheme.titleMedium!.beVietnamPro.copyWith(
        color: appTheme.gray900,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumBeVietnamProGray90018 =>
      theme.textTheme.titleMedium!.beVietnamPro.copyWith(
        color: appTheme.gray900,
        fontSize: 18.fSize,
      );
  static get titleMediumBluegray90002 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray90002,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumBluegray90002SemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray90002,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumManropeWhiteA700 =>
      theme.textTheme.titleMedium!.manrope.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumMedium => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleMediumMedium18 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumMontserratBlack90001 =>
      theme.textTheme.titleMedium!.montserrat.copyWith(
        color: appTheme.black90001,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumMontserratGray60001 =>
      theme.textTheme.titleMedium!.montserrat.copyWith(
        color: appTheme.gray60001,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumMontserratWhiteA700 =>
      theme.textTheme.titleMedium!.montserrat.copyWith(
        color: appTheme.whiteA700,
        fontSize: 17.fSize,
      );
  static get titleMediumOnPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumOverpassBlack90001 =>
      theme.textTheme.titleMedium!.overpass.copyWith(
        color: appTheme.black90001,
      );
  static get titleMediumOverpassBluegray90001 =>
      theme.textTheme.titleMedium!.overpass.copyWith(
        color: appTheme.blueGray90001,
        fontSize: 18.fSize,
      );
  static get titleMediumOverpassBluegray90001SemiBold =>
      theme.textTheme.titleMedium!.overpass.copyWith(
        color: appTheme.blueGray90001,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumOverpassBluegray90001_1 =>
      theme.textTheme.titleMedium!.overpass.copyWith(
        color: appTheme.blueGray90001,
      );
  static get titleMediumOverpassBluegray900b2 =>
      theme.textTheme.titleMedium!.overpass.copyWith(
        color: appTheme.blueGray900B2.withOpacity(0.5),
        fontSize: 18.fSize,
      );
  static get titleMediumOverpassPrimary =>
      theme.textTheme.titleMedium!.overpass.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleMediumOverpassPrimaryContainer =>
      theme.textTheme.titleMedium!.overpass.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(0.45),
        fontWeight: FontWeight.w500,
      );
  static get titleMediumOverpassWhiteA700 =>
      theme.textTheme.titleMedium!.overpass.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleMediumPoppinsBluegray40001 =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.blueGray40001,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumPoppinsBluegray500 =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.blueGray500,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumPoppinsBluegray700 =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.blueGray700,
        fontSize: 18.fSize,
      );
  static get titleMediumPoppinsBluegray90003 =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.blueGray90003,
        fontSize: 18.fSize,
      );
  static get titleMediumPoppinsBluegray90003SemiBold =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.blueGray90003,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumPoppinsBluegray90003SemiBold_1 =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.blueGray90003,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumPoppinsPrimary =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumPoppinsPrimarySemiBold =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumPoppinsWhiteA700 =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleMediumPoppinsWhiteA700Medium =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.whiteA700,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPoppinsWhiteA700Medium_1 =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPoppinsWhiteA700SemiBold =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSemiBold => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSemiBold_1 => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleMediumUrbanist =>
      theme.textTheme.titleMedium!.urbanist.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleMediumWhiteA700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumff242424 => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFF242424),
        fontWeight: FontWeight.w600,
      );
  static get titleSmallBeVietnamProBlack90001 =>
      theme.textTheme.titleSmall!.beVietnamPro.copyWith(
        color: appTheme.black90001,
      );
  static get titleSmallBeVietnamProGray900 =>
      theme.textTheme.titleSmall!.beVietnamPro.copyWith(
        color: appTheme.gray900,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallBeVietnamProGray900_1 =>
      theme.textTheme.titleSmall!.beVietnamPro.copyWith(
        color: appTheme.gray900,
      );
  static get titleSmallBeVietnamProWhiteA700 =>
      theme.textTheme.titleSmall!.beVietnamPro.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallBeVietnamProWhiteA700Bold =>
      theme.textTheme.titleSmall!.beVietnamPro.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallBeVietnamProWhiteA700_1 =>
      theme.textTheme.titleSmall!.beVietnamPro.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleSmallBluegray700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray700,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallBluegray700Black => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray700,
        fontWeight: FontWeight.w900,
      );
  static get titleSmallBluegray90003 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray90003,
      );
  static get titleSmallGray80075 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray80075,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallInterBlueA400 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.blueA400,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallInterBluegray800 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.blueGray800,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallInterGray50001 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.gray50001,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallInterGray90002 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.gray90002,
      );
  static get titleSmallInterGray90002Medium =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.gray90002,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallInterPrimary =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallLatoWhiteA700 =>
      theme.textTheme.titleSmall!.lato.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w800,
      );
  static get titleSmallMontserratOnError =>
      theme.textTheme.titleSmall!.montserrat.copyWith(
        color: theme.colorScheme.onError,
      );
  static get titleSmallOverpassBluegray90001 =>
      theme.textTheme.titleSmall!.overpass.copyWith(
        color: appTheme.blueGray90001,
      );
  static get titleSmallOverpassPrimary =>
      theme.textTheme.titleSmall!.overpass.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallOverpassPrimaryContainer =>
      theme.textTheme.titleSmall!.overpass.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(0.45),
        fontWeight: FontWeight.w500,
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallWhiteA700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallWhiteA70001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA70001,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallWhiteA700Medium => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallWhiteA700_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleSmallff3b566e => theme.textTheme.titleSmall!.copyWith(
        color: Color(0XFF3B566E),
        fontWeight: FontWeight.w500,
      );
  static get titleSmallff3b566eMedium => theme.textTheme.titleSmall!.copyWith(
        color: Color(0XFF3B566E),
        fontWeight: FontWeight.w500,
      );
}

extension on TextStyle {
  TextStyle get lato {
    return copyWith(
      fontFamily: 'Lato',
    );
  }

  TextStyle get beVietnamPro {
    return copyWith(
      fontFamily: 'Be Vietnam Pro',
    );
  }

  TextStyle get manrope {
    return copyWith(
      fontFamily: 'Manrope',
    );
  }

  TextStyle get abel {
    return copyWith(
      fontFamily: 'Abel',
    );
  }

  TextStyle get montserrat {
    return copyWith(
      fontFamily: 'Montserrat',
    );
  }

  TextStyle get acme {
    return copyWith(
      fontFamily: 'Acme',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get overpass {
    return copyWith(
      fontFamily: 'Overpass',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get nunitoSans {
    return copyWith(
      fontFamily: 'Nunito Sans',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get urbanist {
    return copyWith(
      fontFamily: 'Urbanist',
    );
  }
}
