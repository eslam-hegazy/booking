import 'package:booking/core/app_router/app_router.dart';
import 'package:booking/core/di/dependancy_injection.dart';
import 'package:booking/core/utils/export_files.dart';
import 'package:booking/core/widgets/custom_button.dart';
import 'package:booking/modules/auth/logic/login_cubit/login_cubit.dart';
import 'package:booking/modules/auth/logic/register_cubit/register_cubit.dart';
import 'package:booking/modules/auth/presentation/screens/login_screen.dart';
import 'package:booking/modules/home/presentation/screens/home_screen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class AddPassActionsWidget extends StatefulWidget {
  const AddPassActionsWidget({super.key, this.isFromRegister = false});
  final bool isFromRegister;

  @override
  State<AddPassActionsWidget> createState() => _AddPassActionsWidgetState();
}

class _AddPassActionsWidgetState extends State<AddPassActionsWidget> {
  late LoginCubit loginCubit;
  late RegisterCubit registerCubit;
  @override
  void initState() {
    super.initState();
    loginCubit = LoginCubit.get(context);
    registerCubit = RegisterCubit.get(context);
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
                  if (widget.isFromRegister) {
                    if (registerCubit.registerFormKey.currentState!
                        .validate()) {
                      AppRouter.to(() => HomeScreen());
                    }
                  } else {
                    if (loginCubit.resetPassFormKey.currentState!.validate()) {
                      AppRouter.to(
                        () => BlocProvider(
                          create: (_) => getIt<LoginCubit>(),
                          child: LoginScreen(),
                        ),
                      );
                    }
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
