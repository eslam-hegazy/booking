import 'package:booking/core/theme/app_colors.dart';
import 'package:booking/core/theme/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class AppTheme {
  // light theme
  static final light = ThemeData(
    primaryColor: AppColors.whiteColor,
    scaffoldBackgroundColor: AppColors.whiteColor,
    brightness: Brightness.light,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: AppFonts.semiBoldStyle(),
      systemOverlayStyle: SystemUiOverlayStyle(
        // Status bar color
        statusBarColor: Colors.transparent,
        // Status bar brightness (optional)
        statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
        statusBarBrightness: Brightness.light, // For iOS (dark icons)
      ),
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
