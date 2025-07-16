import 'package:booking/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomStatusWidget extends StatelessWidget {
  final VoidCallback? onTap;
  const CustomStatusWidget({
    super.key,
    required this.isActive,
    this.onTap,
  });

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: CircleAvatar(
        radius: 8.h,
        backgroundColor:
            isActive ? AppColors.paidColor : AppColors.redAccentColor,
      ),
    );
  }
}
