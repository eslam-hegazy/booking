import 'package:booking/core/theme/app_colors.dart';
import 'package:booking/core/theme/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';

class BuildDetailsRowWidget extends StatelessWidget {
  const BuildDetailsRowWidget({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
  });
  final IconData icon;
  final String label;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FaIcon(icon, size: 14.sp, color: AppColors.mutedGray),
          Gap(8.w),
          Text(
            '$label : ',
            style: AppStyles.mediumStyle(
              color: AppColors.mutedGray,
              fontSize: 14.sp,
            ),
          ),
          Expanded(
            child: Text(value, style: AppStyles.mediumStyle(fontSize: 14.sp)),
          ),
        ],
      ),
    );
  }
}
