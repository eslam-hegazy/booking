import 'package:booking/core/theme/app_font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppStyles {
  static TextStyle lightStyle({
    double fontSize = 14,
    FontWeight fontWeight = FontWeight.w300,
    TextAlign textAlign = TextAlign.start,
    Color? color,
    TextOverflow? textOverflow,
    String? fontFamily,
    double? height,
    TextDecoration? decoration,
    double? letterSpacing,
    Color? decorationColor,
    bool isUnderline = false,
  }) => TextStyle(
    fontSize: fontSize.sp,
    fontWeight: fontWeight,
    color: color,
    height: height,
    decoration: isUnderline ? TextDecoration.underline : decoration,
    letterSpacing: letterSpacing,
    decorationColor: decorationColor ?? color,
    fontFamily: AppFonts.appFontFamily,
  );

  static TextStyle mediumStyle({
    double fontSize = 16,
    FontWeight fontWeight = FontWeight.w500,
    TextAlign textAlign = TextAlign.start,
    Color? color,
    TextOverflow? textOverflow,
    String? fontFamily,
    int? maxLines,
    double? height,
    TextDecoration? decoration,
    double? letterSpacing,
    Color? decorationColor,
    bool isUnderline = false,
  }) => TextStyle(
    fontSize: fontSize.sp,
    fontWeight: fontWeight,
    color: color,
    height: height,
    decoration: isUnderline ? TextDecoration.underline : decoration,
    letterSpacing: letterSpacing,
    decorationColor: decorationColor ?? color,
    fontFamily: AppFonts.appFontFamily,
  );

  static TextStyle boldStyle({
    double fontSize = 24,
    FontWeight fontWeight = FontWeight.w700,
    TextAlign textAlign = TextAlign.start,
    Color? color,
    TextOverflow? textOverflow,
    String? fontFamily,
    double? height,
    TextDecoration? decoration,
    double? letterSpacing,
    Color? decorationColor,
    bool isUnderline = false,
  }) => TextStyle(
    fontSize: fontSize.sp,
    fontWeight: fontWeight,
    color: color,
    height: height,
    decoration: isUnderline ? TextDecoration.underline : decoration,
    letterSpacing: letterSpacing,
    decorationColor: decorationColor ?? color,
    fontFamily: AppFonts.appFontFamily,
  );
}
