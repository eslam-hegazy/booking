import 'package:booking/core/constants/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class AppRouter {
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();
  static BuildContext? currentContext = navigatorKey.currentContext;

  static Future<T?>? to<T>(
    Widget Function() page, {
    Transition? transition,
    int animationTime = AppConstants.routingDurationMilliseconds,
  }) =>
      Get.to(
        page,
        transition: transition ?? Transition.rightToLeft,
        duration: Duration(milliseconds: animationTime),
        curve: Curves.easeInOut,
      );

  static off(Widget Function() page) => Get.off(
        page,
        transition: Transition.rightToLeft,
        duration: const Duration(
            milliseconds: AppConstants.routingDurationMilliseconds),
        curve: Curves.easeInOut,
      );

  static offAll(Widget Function() page) => Get.offAll(
        page,
        transition: Transition.rightToLeft,
        duration: const Duration(
            milliseconds: AppConstants.routingDurationMilliseconds),
        curve: Curves.easeInOut,
      );

  static back() => Get.back();
}
