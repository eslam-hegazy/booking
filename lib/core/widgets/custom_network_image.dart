import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../theme/app_colors.dart';
// import 'package:spot_grach_owner/core/utils/export_files.dart';

class CustomNetworkImage extends StatelessWidget {
  final String imageUrl;
  final double width;
  final double height;
  final BoxFit? fit;
  final bool? isCircle;
  final Color? color;
  final double borderRadius;

  const CustomNetworkImage({
    Key? key,
    required this.imageUrl,
    this.width = 100,
    this.height = 100,
    this.fit = BoxFit.cover,
    this.isCircle = true,
    this.color,
    this.borderRadius = 12.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // If isCircle is true, set the borderRadius to half of the width or height
    // double finalBorderRadius =
    //     isCircle == true ? (width ?? height ?? 100) / 2 : borderRadius;

    return ClipRRect(
      borderRadius:
          BorderRadius.circular(isCircle == true ? ((height) / 2) : borderRadius),
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        width: width,
        height: height,
        fit: fit,
        color: color,
        placeholder: (context, url) => Container(
          width: width,
          height: height,
          color: AppColors.greyColor,
          child: Skeletonizer(
            enabled: true,
            child: Container(
              color: AppColors.greyColor,
            ),
          ),
        ),
        errorWidget: (context, url, error) => Container(
          width: width,
          height: height,
          color: Colors.grey[300],
          child: const Icon(Icons.error, color: Colors.red),
        ),
      ),
    );
  }
}
