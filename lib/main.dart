import 'package:bloc/bloc.dart';
import 'package:booking/core/app/MyBlocObserver.dart';
import 'package:booking/core/app/my_app.dart';
import 'package:booking/core/helpers/shared_preferences_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  Bloc.observer = MyBlocObserver();
  await dotenv.load();
  await CacheHelper.init();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((val) => runApp(MyApp()));
}
