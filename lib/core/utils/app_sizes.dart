import 'package:flutter/material.dart';

class Sizes {
  Sizes._();
  static double getHeight(context) => MediaQuery.sizeOf(context).height;
  static double getWidth(context) => MediaQuery.sizeOf(context).width;

  static Size getSize(BuildContext context) {
    return MediaQuery.sizeOf(context);
  }

  static double getSizeInSaveArea(BuildContext context) {
    var totalHeight = MediaQuery.sizeOf(context).height;
    var paddingHeight =
        MediaQuery.of(context).padding.top +
        MediaQuery.of(context).padding.bottom;

    return totalHeight - paddingHeight;
  }

  static double getMobileNavigationBarHeight(BuildContext context) {
    return MediaQuery.of(context).padding.bottom;
  }

  static double getMobileStatusBarHeight(BuildContext context) {
    return MediaQuery.of(context).padding.top;
  }

  static bool isMediumDevice(BuildContext context) {
    return MediaQuery.sizeOf(context).width > 385;
  }
}
