import 'package:booking/core/constants/network_constants.dart';
import 'package:booking/core/network/dio_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';


class DioHelper {
  late final Dio dio;

  static int requestDuration = 30;

  DioHelper() {
    dio = Dio()
      ..options.baseUrl = NetworkConstants.baseUrl
      ..options.receiveTimeout = Duration(seconds: requestDuration)
      ..options.connectTimeout = Duration(seconds: requestDuration)
      ..options.sendTimeout = Duration(seconds: requestDuration)
      ..options.responseType = ResponseType.json
      ..options.contentType = "application/json"
      ..options.receiveDataWhenStatusError = true
      ..options.validateStatus = (_) {
        return true;
      }
      // ..options.headers = {
      //   'language': Get.locale == AppLocale.english ? "English" : "Arabic",
      // }
      ..interceptors.add(PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseBody: true,
          responseHeader: false,
          error: true,
          compact: true,
          maxWidth: 90))
      ..interceptors.add(Logging());
  }
}

// class AuthApiHelper extends ApiHelper {
//   AuthApiHelper() {
//     dio.options.headers.addAll({
//       'language': Get.locale == AppLocale.english ? "English" : "Arabic",
//       "Authorization": "Bearer ${_getToken()}",
//     });
//   }

//   String? _getToken() => AppConstants.token?.token;
// }
