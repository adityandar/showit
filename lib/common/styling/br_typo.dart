import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:showit/common/styling/br_color.dart';

class BrTypo {
  const BrTypo._();

  static TextStyle headingH1Bold({Color? color}) {
    return TextStyle(
      color: color ?? BrColor.neutralBlack01,
      fontSize: 24.sp,
      letterSpacing: 0.0,
      wordSpacing: 0.6,
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle headingH1Regular({Color? color}) {
    return TextStyle(
      color: color ?? BrColor.neutralBlack01,
      fontSize: 24.sp,
      letterSpacing: 0.0,
      wordSpacing: 0.6,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle headingH2Bold({Color? color}) {
    return TextStyle(
      color: color ?? BrColor.neutralBlack01,
      fontSize: 20.sp,
      letterSpacing: 0.0,
      wordSpacing: 0.6,
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle headingH2Regular({Color? color}) {
    return TextStyle(
      color: color ?? BrColor.neutralBlack01,
      fontSize: 20.sp,
      letterSpacing: 0.0,
      wordSpacing: 0.6,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle headingH3Bold({Color? color}) {
    return TextStyle(
      color: color ?? BrColor.neutralBlack01,
      fontSize: 16.sp,
      letterSpacing: 0.0,
      wordSpacing: 0.6,
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle headingH3Regular({Color? color}) {
    return TextStyle(
      color: color ?? BrColor.neutralBlack01,
      fontSize: 16.sp,
      letterSpacing: 0.0,
      wordSpacing: 0.6,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle subtitleLarge({Color? color}) {
    return TextStyle(
      color: color ?? BrColor.neutralBlack01,
      fontSize: 14.sp,
      letterSpacing: 0.0,
      wordSpacing: 0.6,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle subtitleSmall({Color? color}) {
    return TextStyle(
      color: color ?? BrColor.neutralBlack01,
      fontSize: 12.sp,
      letterSpacing: 0.0,
      wordSpacing: 0.6,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle bodyRegular({Color? color}) {
    return TextStyle(
      color: color ?? BrColor.neutralBlack01,
      fontSize: 14.sp,
      letterSpacing: 0.0,
      wordSpacing: 0.6,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle bodyMedium({Color? color}) {
    return TextStyle(
      color: color ?? BrColor.neutralBlack01,
      fontSize: 14.sp,
      letterSpacing: 0.0,
      wordSpacing: 0.6,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle bodySmallRegular({Color? color}) {
    return TextStyle(
      color: color ?? BrColor.neutralBlack01,
      fontSize: 12.sp,
      letterSpacing: 0.0,
      wordSpacing: 0.6,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle bodySmallMedium({Color? color}) {
    return TextStyle(
      color: color ?? BrColor.neutralBlack01,
      fontSize: 12.sp,
      letterSpacing: 0.0,
      wordSpacing: 0.6,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle captionRegular({Color? color}) {
    return TextStyle(
      color: color ?? BrColor.neutralBlack01,
      fontSize: 10.sp,
      letterSpacing: 0.0,
      wordSpacing: 0.6,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle captionMedium({Color? color}) {
    return TextStyle(
      color: color ?? BrColor.neutralBlack01,
      fontSize: 10.sp,
      letterSpacing: 0.0,
      wordSpacing: 0.6,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle buttonBold({Color? color}) {
    return TextStyle(
      color: color ?? BrColor.neutralBlack01,
      fontSize: 14.sp,
      letterSpacing: 0.0,
      wordSpacing: 0.6,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle buttonRegular({Color? color}) {
    return TextStyle(
      color: color ?? BrColor.neutralBlack01,
      fontSize: 14.sp,
      letterSpacing: 0.0,
      wordSpacing: 0.6,
      fontWeight: FontWeight.w500,
    );
  }
}
