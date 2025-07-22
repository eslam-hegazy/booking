import 'package:booking/core/utils/app_sizes.dart';
import 'package:booking/core/utils/export_files.dart';
import 'package:booking/core/widgets/custom_button.dart';
import 'package:booking/modules/auth/logic/login_cubit/login_cubit.dart';
import 'package:booking/modules/auth/presentation/widgets/login_fields_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:gap/gap.dart';

class LoginBodyWidget extends StatefulWidget {
  const LoginBodyWidget({super.key});

  @override
  State<LoginBodyWidget> createState() => _LoginBodyWidgetState();
}

class _LoginBodyWidgetState extends State<LoginBodyWidget> {
  late final LoginCubit loginCubit;
  @override
  void initState() {
    super.initState();
    loginCubit = LoginCubit.get(context);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
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
              padding: EdgeInsets.symmetric(vertical: 6.h),
              child: Text(
                LocaleKeys.title_login.tr(),
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
                blurRadius: 10,
                offset: const Offset(0, 5),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              LoginFieldsWidget(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    LocaleKeys.link_forgotPassword.tr(),
                    style: AppStyles.mediumStyle(fontSize: 14),
                  ),
                  Row(
                    children: [
                      Checkbox(value: true, onChanged: (v) {}),
                      Text(
                        LocaleKeys.option_rememberMe.tr(),
                        style: AppStyles.mediumStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ],
              ),
              Gap(20.h),
              CustomButton(
                text: LocaleKeys.title_login.tr(),
                press: () {
                  if (loginCubit.loginFormKey.currentState?.validate() ??
                      false) {
                    //Todo//
                  }
                },
              ),
            ],
          ),
        ),

        Gap(20.h),
      ],
    );
  }
}
