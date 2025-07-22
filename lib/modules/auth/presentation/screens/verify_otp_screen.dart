import 'dart:async';

import 'package:booking/core/app_router/app_router.dart';
import 'package:booking/core/di/dependancy_injection.dart';
import 'package:booking/core/utils/app_sizes.dart';
import 'package:booking/core/widgets/custom_button.dart';
import 'package:booking/generated/locale_keys.g.dart';
import 'package:booking/modules/auth/logic/login_cubit/login_cubit.dart';
import 'package:booking/modules/auth/logic/register_cubit/register_cubit.dart';
import 'package:booking/modules/auth/presentation/screens/add_password_screen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:pinput/pinput.dart';
import 'package:booking/core/theme/app_colors.dart';
import 'package:booking/core/theme/app_styles.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key, this.isFromRegister = false});
  final bool isFromRegister;
  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  late LoginCubit loginCubit;
  final int _start = 60;
  late int _secondsRemaining;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    loginCubit = LoginCubit.get(context);
    _secondsRemaining = _start;
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_secondsRemaining == 0) {
        timer.cancel();
      } else {
        setState(() {
          _secondsRemaining--;
        });
      }
    });
  }

  String get _formattedTime {
    final minutes = (_secondsRemaining ~/ 60).toString().padLeft(2, '0');
    final seconds = (_secondsRemaining % 60).toString().padLeft(2, '0');
    return '$minutes:$seconds';
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 50.w,
      height: 50.h,
      textStyle: AppStyles.boldStyle(fontSize: 20),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: Colors.transparent),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.primaryColor,
        leading: BackButton(color: AppColors.whiteColor),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 40.h),
        child: Column(
          children: [
            Gap(40.h),
            Container(
              width: Sizes.getWidth(context),
              decoration: BoxDecoration(
                color: AppColors.darkBlueColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16.r),
                  topRight: Radius.circular(16.r),
                ),
              ),
              child: Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.h),
                  child: Text(
                    LocaleKeys.verify_OTP.tr(),
                    style: AppStyles.boldStyle(
                      color: AppColors.whiteColor,
                      fontSize: 18.sp,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20.w),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(16.r),
                  bottomRight: Radius.circular(16.r),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade200,
                    blurRadius: 10.r,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Gap(8.h),
                  Text(
                    LocaleKeys.label_otpCode.tr(),
                    style: AppStyles.mediumStyle(fontSize: 14),
                  ),
                  Gap(24.h),
                  Pinput(
                    length: 6,
                    defaultPinTheme: defaultPinTheme,
                    controller: loginCubit.otpController,
                    focusedPinTheme: defaultPinTheme.copyWith(
                      decoration: defaultPinTheme.decoration!.copyWith(
                        border: Border.all(color: AppColors.primaryColor),
                      ),
                    ),
                  ),
                  Gap(24.h),
                  Text(
                    _formattedTime,
                    style: AppStyles.boldStyle(
                      fontSize: 16,
                      color: AppColors.primaryColor,
                    ),
                  ),
                  Gap(24.h),
                  Row(
                    children: [
                      Expanded(
                        child: CustomButton(
                          text: LocaleKeys.button_resend.tr(),
                          press: _secondsRemaining == 0
                              ? () {
                                  setState(() {
                                    _secondsRemaining = _start;
                                    _startTimer();
                                  });
                                }
                              : () {},
                          backgroundColor: _secondsRemaining == 0
                              ? AppColors.greenColor.withOpacity(0.8)
                              : Colors.grey.shade300,
                          textColor: _secondsRemaining == 0
                              ? AppColors.whiteColor
                              : Colors.grey.shade600,
                        ),
                      ),
                      Gap(16.w),
                      Expanded(
                        child: CustomButton(
                          text: LocaleKeys.button_confirm.tr(),
                          press: () {
                            if (loginCubit.otpController.text.length == 6) {
                              AppRouter.to(
                                () => MultiBlocProvider(
                                  providers: [
                                    BlocProvider(
                                      create: (context) => getIt<LoginCubit>(),
                                    ),
                                    BlocProvider(
                                      create: (context) =>
                                          getIt<RegisterCubit>(),
                                    ),
                                  ],
                                  child: AddPasswordScreen(
                                    isFromRegister: widget.isFromRegister,
                                  ),
                                ),
                              );
                            }
                          },
                          backgroundColor: Colors.grey.shade300,
                          textColor: Colors.grey.shade600,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
