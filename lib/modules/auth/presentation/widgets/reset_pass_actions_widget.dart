import 'package:booking/core/app_router/app_router.dart';
import 'package:booking/core/di/dependancy_injection.dart';
import 'package:booking/core/utils/export_files.dart';
import 'package:booking/core/widgets/custom_button.dart';
import 'package:booking/modules/auth/logic/login_cubit/login_cubit.dart';
import 'package:booking/modules/auth/presentation/screens/verify_otp_screen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class ResetPassActionsWidget extends StatefulWidget {
  const ResetPassActionsWidget({super.key});

  @override
  State<ResetPassActionsWidget> createState() => _ResetPassActionsWidgetState();
}

class _ResetPassActionsWidgetState extends State<ResetPassActionsWidget> {
  late LoginCubit loginCubit;
  @override
  void initState() {
    super.initState();
    loginCubit = LoginCubit.get(context);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Gap(24.h),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                text: LocaleKeys.button_confirm.tr(),
                press: () {
                  if (loginCubit.loginFormKey.currentState!.validate()) {
                    AppRouter.to(
                      () => BlocProvider(
                        create: (context) => getIt<LoginCubit>(),
                        child: OtpScreen(isFromRegister: false),
                      ),
                    );
                  }
                },
                backgroundColor: AppColors.greenColor.withOpacity(0.8),
                textColor: AppColors.whiteColor,
              ),
            ),
            Gap(16.w),
            Expanded(
              child: CustomButton(
                text: LocaleKeys.button_cancel.tr(),
                press: () {
                  AppRouter.back();
                },
                backgroundColor: Colors.grey.shade300,
                textColor: Colors.grey.shade600,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
