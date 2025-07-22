import 'package:booking/core/theme/app_colors.dart';
import 'package:booking/core/theme/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomRequiredText extends StatelessWidget {
  const CustomRequiredText({
    super.key,
    required this.title,
    required this.isRequired,
    this.style,
  });

  final String? title;
  final bool isRequired;
  final TextStyle? style;
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
                  style:
                      style ??
                      AppStyles.boldStyle(
                        color: AppColors.primaryColor,
                        fontSize: 14,
                      ),
                ),
              ),
        isRequired
            ? Text("*", style: AppStyles.mediumStyle(color: AppColors.redColor))
            : const SizedBox.shrink(),
      ],
    );
  }
}
