// ignore_for_file: use_build_context_synchronously

import 'package:booking/modules/menu/presentation/screens/profile/data/profile_repo.dart';
import 'package:booking/modules/menu/presentation/screens/profile/logic/profile_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileCubit extends Cubit<ProfileStates> {
  final ProfileRepo _profileRepo;

  ProfileCubit(this._profileRepo) : super(const ProfileStates.initial());

  static ProfileCubit get(context) => BlocProvider.of(context);
  final GlobalKey<FormState> profileFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> changePassFormKey = GlobalKey<FormState>();
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController passConfirmController = TextEditingController();

  @override
  Future<void> close() {
    usernameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    passController.dispose();
    passConfirmController.dispose();
    return super.close();
  }
  // void login(BuildContext context) async {
  //   emit(const ProfileStates.loadingProfileStates());
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

  //         emit(ProfileStates.SuccessProfileStates(data));
  //       } catch (e) {
  //         log("${e}error is here");
  //       }
  //     },
  //     failure: (error) {
  //       emit(
  //         ProfileStates.ErrorProfileStates(error: error.apiErrorModel.message ?? ''),
  //       );
  //     },
  //   );
  // }
}
