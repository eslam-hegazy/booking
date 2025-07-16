
import 'dart:io';
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:booking/core/theme/app_colors.dart';
import 'package:booking/core/theme/app_fonts.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomNationalIdDottedBorder extends StatelessWidget {
  final String? title;
  final File? image;
  final String placeHolder;
  final BoxFit? fit;
  final double height;
  final VoidCallback press;
  const CustomNationalIdDottedBorder({
    super.key,
    this.image,
    required this.height,
    this.fit=BoxFit.fill,
    this.title,
    required this.press,
    required this.placeHolder,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: DottedBorder(
        borderType: BorderType.RRect,
        radius: Radius.circular(10.h),
        dashPattern: [5, 4],
        padding: EdgeInsets.all(4),
        color: AppColors.greyColor,
        child: Stack(
          children: [
            Container(
              height: height,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.h),
                image: DecorationImage(
                  image: image == null
                      ? AssetImage(placeHolder)
                      : FileImage(image!),
                  fit: fit,
                ),
              ),
            ),
            image == null
                ? BlurryContainer(
                    blur: 5,
                    height: height,
                    width: double.infinity,
                    elevation: 2,
                    color: Colors.transparent,
                    padding: const EdgeInsets.all(8),
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    child: title != null && title!.isNotEmpty
                        ? Text(
                            "($title)",
                            style: AppFonts.semiBoldStyle(
                                fontSize: 14, color: AppColors.whiteColor),
                          )
                        : const SizedBox.shrink(),
                  )
                : const SizedBox.shrink(),
            image == null
                ? Container(
                    padding: EdgeInsets.all(25.h),
                    height: height,
                    width: double.infinity,
                    child: CircleAvatar(
                      backgroundColor: AppColors.secondColor.withOpacity(0.6),
                      radius: 10.h,
                      child: Icon(
                        Icons.camera,
                        color: AppColors.whiteColor,
                      ),
                    ),
                  )
                : const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
