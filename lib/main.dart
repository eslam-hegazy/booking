import 'package:bloc/bloc.dart';
import 'package:booking/core/app/MyBlocObserver.dart';
import 'package:booking/core/app/my_app.dart';
import 'package:booking/core/constants/app_constants.dart';
import 'package:booking/core/di/dependancy_injection.dart';
import 'package:booking/core/helpers/shared_preferences_services.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Future.wait([
    EasyLocalization.ensureInitialized(),
    ScreenUtil.ensureScreenSize(),
  ]);
  Bloc.observer = MyBlocObserver();
  // await dotenv.load();
  await initGetIt();
  await CacheHelper.init();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then(
    (val) => runApp(
      EasyLocalization(
        supportedLocales: const [Locale('en'), Locale('ar')],
        path: AppConstants.translationsPath,
        startLocale: Locale('ar'),
        saveLocale: true,
        useOnlyLangCode: true,
        child: MyApp(),
      ),
    ),
  );
}
