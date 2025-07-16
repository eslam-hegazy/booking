import 'package:booking/core/animations/fade_animation.dart';
import 'package:booking/core/theme/app_colors.dart';
import 'package:booking/core/utils/app_images.dart';
import 'package:booking/core/utils/app_locale.dart';
import 'package:booking/core/widgets/custom_lottie.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:url_launcher/url_launcher.dart';

void customLoading({required BuildContext context}) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (_) => Center(
      child: FadeInSlide(
        duration: 2,
        direction: FadeSlideDirection.ltr,
        child: CustomLottie(image: "", height: 80.h),
      ),
    ),
  );
}

void customToastMessage({
  required String message,
  bool isSuccess = true,
  ToastGravity toastGravity = ToastGravity.BOTTOM,
}) {
  Fluttertoast.showToast(
    msg: message,
    toastLength: Toast.LENGTH_SHORT,
    gravity: toastGravity,
    timeInSecForIosWeb: 1,
    backgroundColor: isSuccess ? AppColors.secondColor : AppColors.redColor,
    textColor: Colors.white,
    fontSize: 16.0,
  );
}

Future<void> openWhatsApp({required String phoneNumber}) async {
  String url = "https://wa.me/$phoneNumber}";
  Uri uri = Uri.parse(url);

  if (await canLaunchUrl(uri)) {
    await launchUrl(uri, mode: LaunchMode.externalApplication);
  } else {
    debugPrint("Could not launch WhatsApp");
  }
}

Future<void> openAccountLink({required String url}) async {
  try {
    final Uri uri = Uri.parse(url);

    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      debugPrint("Could not launch the account link: $url");
    }
  } catch (e) {
    debugPrint("Error launching account link: $e");
  }
}

/// Make a phone call
Future<void> makeCall({required String phoneNumber}) async {
  Uri uri = Uri.parse("tel:$phoneNumber");
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    debugPrint("Could not make a call");
  }
}

String formatDate({required DateTime dateTime}) {
  return DateFormat(
    "d MMMM y",
    AppLocale.getCurrentLang.languageCode,
  ).format(dateTime);
}

String formatDateWithTime({required DateTime dateTime}) {
  return DateFormat(
    "d MMMM 'AT' h:mm a",
    AppLocale.getCurrentLang.languageCode,
  ).format(dateTime);
}

void resetAppData() {}

Future<DateTime?> pickDateTime({
  required BuildContext context,
  DateTime? initialDate,
}) async {
  final DateTime now = DateTime.now();
  final DateTime? picked = await showDatePicker(
    context: context,
    initialDate: initialDate ?? now,
    firstDate: DateTime(2025),
    lastDate: DateTime.now(),
    locale: AppLocale.getCurrentLang,
    builder: (context, child) {
      return Theme(
        data: ThemeData.light().copyWith(
          primaryColor: AppColors.primaryColor,
          buttonTheme: ButtonThemeData(textTheme: ButtonTextTheme.primary),
          colorScheme: ColorScheme.light(
            primary: AppColors.primaryColor,
            onPrimary: AppColors.whiteColor,
            onSurface: AppColors.blackColor,
          ),
        ),
        child: child!,
      );
    },
  );

  if (picked != null) {
    return picked;
  }

  return null;
}

Future<DateTimeRange?> pickDateRange({
  required BuildContext context,
  DateTimeRange? initialRange,
}) async {
  final DateTime now = DateTime.now();
  final DateTimeRange? picked = await showDateRangePicker(
    context: context,
    firstDate: DateTime(2025),
    lastDate: now,
    initialDateRange: initialRange,
    locale: AppLocale.getCurrentLang,
    builder: (context, child) {
      return Theme(
        data: ThemeData.light().copyWith(
          primaryColor: AppColors.primaryColor,
          buttonTheme: ButtonThemeData(textTheme: ButtonTextTheme.primary),
          colorScheme: ColorScheme.light(
            primary: AppColors.primaryColor,
            onPrimary: AppColors.whiteColor,
            onSurface: AppColors.blackColor,
          ),
        ),
        child: child!,
      );
    },
  );

  return picked;
}
