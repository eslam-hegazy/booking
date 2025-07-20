import 'package:booking/core/theme/app_colors.dart';
import 'package:booking/core/theme/app_styles.dart';
import 'package:flutter/material.dart';

Widget customTryAgainButton({required VoidCallback onTap}) {
  return InkWell(
    onTap: onTap,
    child: Text(
      "Try Again",
      style: AppStyles.mediumStyle(color: AppColors.redColor),
    ),
  );
}
