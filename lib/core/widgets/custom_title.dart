import 'package:booking/core/theme/app_styles.dart';
import 'package:flutter/material.dart';

class CustomTitle extends StatelessWidget {
  final String title;
  const CustomTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: AppStyles.mediumStyle(fontWeight: FontWeight.bold),
    );
  }
}
