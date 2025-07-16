import 'package:booking/core/theme/app_colors.dart';
import 'package:booking/core/theme/app_fonts.dart';
import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final String text;
  final Color? textColor;
  final VoidCallback press;
  final Color? borderColor; // New optional border color

  const CustomTextButton({
    super.key,
    required this.text,
    this.textColor = AppColors.secondColor,
    required this.press,
    this.borderColor, // Accept borderColor
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4), // Optional padding
        decoration: borderColor != null
            ? BoxDecoration(
                border: Border.all(color: borderColor!, width: 1.0),
                borderRadius: BorderRadius.circular(10),
              )
            : null, // Only apply border if borderColor is not null
        child: Text(
          text,
          style: AppFonts.boldStyle(
            color: textColor,
            fontSize: 14,
            isUnderline: true,
          ),
        ),
      ),
    );
  }
}
