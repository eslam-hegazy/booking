import 'package:booking/core/app_router/app_router.dart';
import 'package:booking/core/di/dependancy_injection.dart';
import 'package:booking/core/theme/app_colors.dart';
import 'package:booking/core/theme/app_styles.dart';
import 'package:booking/generated/locale_keys.g.dart';
import 'package:booking/modules/auth/logic/login_cubit/login_cubit.dart';
import 'package:booking/modules/auth/logic/register_cubit/register_cubit.dart';
import 'package:booking/modules/auth/presentation/screens/register_screen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class NewUserWidget extends StatefulWidget {
  const NewUserWidget({super.key});

  @override
  State<NewUserWidget> createState() => _NewUserWidgetState();
}

class _NewUserWidgetState extends State<NewUserWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          LocaleKeys.new_user.tr(),
          style: AppStyles.mediumStyle(color: AppColors.neutralGray),
        ),

        Gap(8.w),
        InkWell(
          onTap: () => AppRouter.to(
            () => MultiBlocProvider(
              providers: [
                BlocProvider(create: (context) => getIt<RegisterCubit>()),
                BlocProvider(create: (context) => getIt<LoginCubit>()),
              ],
              child: const RegisterScreen(),
            ),
          ),
          child: Text(
            LocaleKeys.register_now.tr(),
            style: AppStyles.mediumStyle(color: AppColors.primaryColor),
          ),
        ),
      ],
    );
  }
}
