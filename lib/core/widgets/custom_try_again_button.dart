import 'package:booking/core/theme/app_colors.dart';
import 'package:booking/core/theme/app_fonts.dart';
import 'package:flutter/material.dart';

Widget customTryAgainButton({required VoidCallback onTap}) {
  return InkWell(
    onTap: onTap,
    child: Text(
      "Try Again",
      style: AppFonts.semiBoldStyle(color: AppColors.redColor),
    ),
  );
}
