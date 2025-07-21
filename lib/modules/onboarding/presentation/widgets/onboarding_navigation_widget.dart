import 'package:booking/core/theme/app_colors.dart';
import 'package:booking/modules/onboarding/presentation/widgets/onboarding_nav_btn_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingNavigation extends StatelessWidget {
  const OnboardingNavigation({
    super.key,
    required this.isLastPage,
    required this.controller,
    required this.pageCount,
  });

  final bool isLastPage;
  final PageController controller;
  final int pageCount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavigationButton(
            isVisible: controller.page != 0,
            icon: Icons.arrow_back,
            onPressed: () {
              controller.previousPage(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeIn,
              );
            },
          ),

          SmoothPageIndicator(
            controller: controller,
            count: pageCount,
            effect: WormEffect(
              dotHeight: 10.h,
              dotWidth: 10.w,
              activeDotColor: AppColors.primaryColor,
              dotColor: AppColors.b75Color,
            ),
          ),

          NavigationButton(
            icon: isLastPage ? Icons.check : Icons.arrow_forward,
            onPressed: () {
              if (isLastPage) {
                /////
              } else {
                controller.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeIn,
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
