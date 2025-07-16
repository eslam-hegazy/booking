import 'package:booking/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDivider extends StatelessWidget {
  final Color? color;
  const CustomDivider({
    super.key,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120.w,
      height: 4.h,
      margin: EdgeInsets.symmetric(vertical: 10.h),
      decoration: BoxDecoration(
        color: color ?? AppColors.greyColor.withOpacity(0.2),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
