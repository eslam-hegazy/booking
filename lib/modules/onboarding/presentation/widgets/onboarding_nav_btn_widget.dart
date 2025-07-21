import 'dart:ui';

import 'package:booking/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NavigationButton extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData icon;
  final bool isVisible;

  const NavigationButton({
    super.key,
    required this.onPressed,
    required this.icon,
    this.isVisible = true,
  });

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isVisible,
      maintainSize: true,
      maintainAnimation: true,
      maintainState: true,
      child: CircleAvatar(
        radius: 28.r,
        backgroundColor: AppColors.primaryColor,
        child: IconButton(
          icon: Icon(icon, color: Colors.white, size: 28.sp),
          onPressed: onPressed,
        ),
      ),
    );
  }
}
