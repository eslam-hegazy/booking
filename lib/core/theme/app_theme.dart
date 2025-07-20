// ignore_for_file: deprecated_member_use

import 'package:booking/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTheme {
  static final light = ThemeData(
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: AppColors.whiteColor,
    brightness: Brightness.light,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    appBarTheme: AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      elevation: 8,
      shadowColor: Colors.black.withOpacity(0.161),
    ),
    checkboxTheme: CheckboxThemeData(
      checkColor: WidgetStateProperty.resolveWith<Color>((
        Set<WidgetState> states,
      ) {
        if (states.contains(WidgetState.disabled)) {
          return AppColors.primaryColor;
        }
        return AppColors.primaryColor;
      }),
      fillColor: WidgetStateProperty.resolveWith<Color>((
        Set<WidgetState> states,
      ) {
        if (states.contains(WidgetState.disabled)) {
          return AppColors.n50Color;
        }
        return AppColors.n50Color;
      }),
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      side: BorderSide(color: AppColors.t75Color),
    ),
  );
  // dark theme
  // static final dark = ThemeData(
  //   primaryColor: AppColors.baseScreenDarkColor,
  //   scaffoldBackgroundColor: AppColors.baseDarkColor,
  //   brightness: Brightness.dark,
  //   visualDensity: VisualDensity.adaptivePlatformDensity,
  //   appBarTheme: const AppBarTheme(
  //     backgroundColor: Colors.transparent,
  //     elevation: 0,
  //     centerTitle: true,
  //     systemOverlayStyle: SystemUiOverlayStyle(
  //       // Status bar color
  //       statusBarColor: Colors.transparent,
  //       // Status bar brightness (optional)
  //       statusBarIconBrightness: Brightness.light, // For Android (dark icons)
  //       statusBarBrightness: Brightness.dark, // For iOS (dark icons)
  //     ),
  //   ),
  // );
}
