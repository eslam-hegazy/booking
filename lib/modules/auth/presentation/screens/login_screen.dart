import 'package:booking/core/app_assets/app_assets.dart';
import 'package:booking/core/utils/export_files.dart';
import 'package:booking/core/widgets/custom_image_widget.dart';
import 'package:booking/modules/auth/logic/login_cubit/login_cubit.dart';
import 'package:booking/modules/auth/presentation/widgets/login_body_widget.dart';
import 'package:booking/modules/auth/presentation/widgets/new_user_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late final LoginCubit loginCubit;
  @override
  void initState() {
    super.initState();
    loginCubit = LoginCubit.get(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 40.h),
          child: Form(
            key: loginCubit.loginFormKey,
            child: Column(
              children: [
                const ImageIconWidget(icon: Assets.logoSplashLogo, height: 80),
                LoginBodyWidget(),
                NewUserWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
