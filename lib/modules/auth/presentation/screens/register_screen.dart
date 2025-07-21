import 'package:booking/core/app_assets/app_assets.dart';
import 'package:booking/core/app_router/app_router.dart';
import 'package:booking/core/di/dependancy_injection.dart';
import 'package:booking/core/utils/export_files.dart';
import 'package:booking/core/widgets/custom_image_widget.dart';
import 'package:booking/modules/auth/logic/login_cubit/login_cubit.dart';
import 'package:booking/modules/auth/logic/register_cubit/register_cubit.dart';
import 'package:booking/modules/auth/presentation/screens/login_screen.dart';
import 'package:booking/modules/auth/presentation/widgets/register_body_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  late final RegisterCubit registerCubit;
  @override
  void initState() {
    super.initState();
    registerCubit = RegisterCubit.get(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 40.h),
          child: Form(
            key: registerCubit.registerFormKey,
            child: Column(
              children: [
                ImageIconWidget(icon: Assets.logoSplashLogo, height: 80.h),
                RegisterBodyWidget(),
                InkWell(
                  onTap: () => AppRouter.to(
                    () => BlocProvider(
                      create: (_) => getIt<LoginCubit>(),
                      child: const LoginScreen(),
                    ),
                  ),
                  child: Text(
                    LocaleKeys.alreadyHaveAccount.tr(),
                    style: AppStyles.mediumStyle(color: AppColors.primaryColor),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
