// ignore_for_file: use_build_context_synchronously

import 'dart:developer';
import 'package:booking/modules/auth/data/repos/login_repo.dart';
import 'package:booking/modules/auth/logic/login_cubit/login_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;

  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  static LoginCubit get(context) => BlocProvider.of(context);
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> resetPassFormKey = GlobalKey<FormState>();
  TextEditingController emailOrUsernameController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController passConfirmController = TextEditingController();
  TextEditingController otpController = TextEditingController();

  @override
  Future<void> close() {
    emailOrUsernameController.dispose();
    passController.dispose();
    return super.close();
  }
  // void login(BuildContext context) async {
  //   emit(const LoginState.loadingLoginState());
  //   var fcmToken = await getToken();
  //   final response = await _loginRepo.login(
  //     email: emailOrUsernameController.text,
  //     password: passController.text,
  //     fcmToken: fcmToken,
  //     deviceInfo: {
  //       'current_platform': Theme.of(context).platform.name,
  //       'model': Theme.of(context).platform.toString(),
  //     },
  //   );
  //   log("${fcmToken}fcm token in login");

  //   response.when(
  //     success: (data) async {
  //       try {
  //         // await DioFactory.updateDioHeaders(isAfterLogin: true);

  //         emit(LoginState.SuccessLoginState(data));
  //       } catch (e) {
  //         log("${e}error is here");
  //       }
  //     },
  //     failure: (error) {
  //       emit(
  //         LoginState.ErrorLoginState(error: error.apiErrorModel.message ?? ''),
  //       );
  //     },
  //   );
  // }
}
