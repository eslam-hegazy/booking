import 'package:booking/core/widgets/custom_lottie.dart';
import 'package:booking/modules/onboarding/data/model/onboarding_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_styles.dart';

class OnboardingPage extends StatelessWidget {
  final OnboardingItem item;
  const OnboardingPage({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomLottie(image: item.animation, height: 280.h),
          SizedBox(height: 40.h),
          Text(
            item.title,
            textAlign: TextAlign.center,
            style: AppStyles.boldStyle(
              fontSize: 22.sp,
              color: AppColors.darkBlueColor,
            ),
          ),
          SizedBox(height: 16.h),
          Text(
            item.subtitle,
            textAlign: TextAlign.center,
            style: AppStyles.mediumStyle(
              fontSize: 16.sp,
              color: AppColors.mutedGray,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
