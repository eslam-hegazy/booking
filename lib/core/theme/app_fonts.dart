import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppFonts {
  static TextStyle regularStyle({
    double fontSize = 14,
    FontWeight fontWeight = FontWeight.normal,
    TextAlign textAlign = TextAlign.start,
    Color? color,
    TextOverflow? textOverflow,
    String? fontFamily,
    double? height,
    TextDecoration? decoration,
    double? letterSpacing,
    Color? decorationColor,
    bool isUnderline = false,
  }) =>
      GoogleFonts.openSans(
        fontSize: fontSize.sp,
        fontWeight: fontWeight,
        color: color,
        height: height,
        decoration: isUnderline ? TextDecoration.underline : decoration,
        letterSpacing: letterSpacing,
        decorationColor: decorationColor ?? color,
      );

  static TextStyle semiBoldStyle({
    double fontSize = 16,
    FontWeight fontWeight = FontWeight.w600,
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
  }) =>
      GoogleFonts.openSans(
        fontSize: fontSize.sp,
        fontWeight: fontWeight,
        color: color,
        height: height,
        decoration: isUnderline ? TextDecoration.underline : decoration,
        letterSpacing: letterSpacing,
        decorationColor: decorationColor ?? color,
      );

  static TextStyle boldStyle({
    double fontSize = 34,
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
  }) =>
      GoogleFonts.openSans(
        fontSize: fontSize.sp,
        fontWeight: fontWeight,
        color: color,
        height: height,
        decoration: isUnderline ? TextDecoration.underline : decoration,
        letterSpacing: letterSpacing,
        decorationColor: decorationColor ?? color,
      );
}
