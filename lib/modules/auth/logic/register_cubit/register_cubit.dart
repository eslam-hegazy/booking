// ignore_for_file: use_build_context_synchronously

import 'package:booking/modules/auth/data/repos/register_repo.dart';
import 'package:booking/modules/auth/logic/register_cubit/register_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterCubit extends Cubit<RegisterStates> {
  final RegisterRepo _registerRepo;

  RegisterCubit(this._registerRepo) : super(const RegisterStates.initial());

  static RegisterCubit get(context) => BlocProvider.of(context);
  final GlobalKey<FormState> registerFormKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController fullNameController = TextEditingController();

  @override
  Future<void> close() {
    emailController.dispose();
    phoneController.dispose();
    fullNameController.dispose();
    return super.close();
  }
  // void login(BuildContext context) async {
  //   emit(const RegisterStates.loadingRegisterStates());
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

  //         emit(RegisterStates.SuccessRegisterStates(data));
  //       } catch (e) {
  //         log("${e}error is here");
  //       }
  //     },
  //     failure: (error) {
  //       emit(
  //         RegisterStates.ErrorRegisterStates(error: error.apiErrorModel.message ?? ''),
  //       );
  //     },
  //   );
  // }
}
