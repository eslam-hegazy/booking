import 'package:action_slider/action_slider.dart';
import 'package:booking/core/app_router/app_router.dart';
import 'package:booking/core/extentions/sizedbox_extention.dart';
import 'package:booking/core/theme/app_colors.dart';
import 'package:booking/core/theme/app_fonts.dart';
import 'package:booking/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          navigatorKey: AppRouter.navigatorKey,
          debugShowCheckedModeBanner: false,
          themeMode: ThemeMode.light,
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          builder: (context, child) {
            return GestureDetector(
              onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
              child: MediaQuery(
                data: MediaQuery.of(
                  context,
                ).copyWith(textScaler: const TextScaler.linear(1.0)),
                child: child!,
              ),
            );
          },
          home: Scaffold(
            body: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 40.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomButton(text: "dfsf", press: () {}),
                  10.h.ph,
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

