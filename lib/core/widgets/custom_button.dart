import 'package:booking/core/theme/app_colors.dart';
import 'package:booking/core/theme/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color? textColor;
  final Color? backgroundColor;
  final VoidCallback press;
  const CustomButton({
    super.key,
    required this.text,
    this.textColor = AppColors.whiteColor,
    this.backgroundColor = AppColors.primaryColor,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: double.infinity,
      height: 40.h,
      color: backgroundColor,
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5.h),
        borderSide: BorderSide.none,
      ),
      onPressed: press,
      child: Text(
        text,
        style: AppFonts.semiBoldStyle(color: textColor, fontSize: 14),
      ),
    );
  }
}
