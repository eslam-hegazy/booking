import 'package:booking/core/extentions/sizedbox_extention.dart';
import 'package:booking/core/theme/app_colors.dart';
import 'package:booking/core/theme/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final IconData? icon;
  final Color? textColor;
  final double? height;
  final Color? backgroundColor;
  final double? radius;
  final double? width;
  final VoidCallback press;
  const CustomButton({
    super.key,
    required this.text,
    this.icon,
    this.width,
    this.height,
    this.textColor = AppColors.whiteColor,
    this.backgroundColor = AppColors.primaryColor,
    this.radius,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: double.infinity,
      height: height ?? 45.h,
      color: backgroundColor,
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(radius ?? 5.h),
        borderSide: BorderSide.none,
      ),
      onPressed: press,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          icon == null
              ? const SizedBox.shrink()
              : Icon(icon, color: AppColors.whiteColor),
          icon == null ? const SizedBox.shrink() : 4.w.pw,
          Text(
            text,
            style: AppStyles.mediumStyle(color: textColor, fontSize: 14.sp),
          ),
        ],
      ),
    );
  }
}
