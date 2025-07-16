
import 'package:booking/core/theme/app_colors.dart';
import 'package:booking/core/theme/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomRequiredText extends StatelessWidget {
  const CustomRequiredText({
    super.key,
    required this.title,
    required this.isRequired,
  });

  final String? title;
  final bool isRequired;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        title == null
            ? const SizedBox.shrink()
            : Padding(
                padding: EdgeInsets.symmetric(vertical: 2.h),
                child: Text(
                  title!,
                  style: AppFonts.boldStyle(
                      color: AppColors.primaryColor, fontSize: 14),
                ),
              ),
        isRequired
            ? Text(
                "*",
                style: AppFonts.semiBoldStyle(color: AppColors.redColor),
              )
            : const SizedBox.shrink(),
      ],
    );
  }
}
