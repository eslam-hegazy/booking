import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum ImageIconType { normal, svg }

class ImageIconWidget extends StatelessWidget {
  const ImageIconWidget({
    super.key,
    this.iconType = ImageIconType.normal,
    required this.icon,
    this.height,
    this.width,
    this.fit,
    this.color,
  });

  final ImageIconType iconType;
  final String icon;
  final double? height;
  final double? width;
  final BoxFit? fit;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return iconType == ImageIconType.normal
        ? Image.asset(
            icon,
            height: height,
            width: width,
            fit: fit,
            errorBuilder: (context, error, stackTrace) {
              return Icon(Icons.error);
            },
          )
        : SvgPicture.asset(
            icon,
            height: height,
            width: width,
            errorBuilder: (context, error, stackTrace) {
              return Icon(Icons.error);
            },
            colorFilter: color != null
                ? ColorFilter.mode(color!, BlendMode.srcIn)
                : null,
          );
  }
}
