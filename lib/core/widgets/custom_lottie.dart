import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CustomLottie extends StatelessWidget {
  final String image;
  final double? height;
  final double? width;
  const CustomLottie({
    super.key,
    required this.image,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(
      image,
      height: height,
      width: width,
    );
  }
}
