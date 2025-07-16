import 'package:flutter/material.dart';

class CustomAssetImage extends StatelessWidget {
  final String image;
  final double? height;
  final double? width;
  const CustomAssetImage({
    super.key,
    required this.image,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      height: height,
      width: width,
    );
  }
}
