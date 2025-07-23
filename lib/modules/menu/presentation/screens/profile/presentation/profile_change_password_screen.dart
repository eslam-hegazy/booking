import 'package:booking/core/utils/app_sizes.dart';
import 'package:booking/core/utils/validations.dart';
import 'package:booking/core/widgets/custom_button.dart';
import 'package:booking/core/widgets/custom_text_form_field.dart';
import 'package:booking/generated/locale_keys.g.dart';
import 'package:booking/modules/menu/presentation/screens/profile/logic/profile_cubit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:booking/core/theme/app_colors.dart';
import 'package:booking/core/theme/app_styles.dart';

class ProfileChangePasswordScreen extends StatefulWidget {
  const ProfileChangePasswordScreen({super.key});
  @override
  State<ProfileChangePasswordScreen> createState() =>
      _ProfileChangePasswordScreenState();
}

class _ProfileChangePasswordScreenState
    extends State<ProfileChangePasswordScreen> {
  late ProfileCubit profileCubit;
  @override
  void initState() {
    super.initState();
    profileCubit = ProfileCubit.get(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.primaryColor,
        leading: BackButton(color: AppColors.whiteColor),
        title: Text(
          LocaleKeys.change_pass.tr(),
          style: AppStyles.boldStyle(color: Colors.white, fontSize: 18.sp),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 40.h),
        child: Form(
          key: profileCubit.changePassFormKey,
          child: Column(
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Gap(12.h),
                  CustomTextFormField(
                    controller: profileCubit.passController,
                    validator: (p0) => validatePassword(p0),
                    title: LocaleKeys.label_password.tr(),
                    labelStyle: AppStyles.mediumStyle(
                      color: AppColors.labelColor,
                    ),
                  ),
                  Gap(12.h),
                  CustomTextFormField(
                    controller: profileCubit.passConfirmController,
                    validator: (p0) => validateConfirmPassword(
                      p0,
                      profileCubit.passController.text,
                    ),
                    title: LocaleKeys.pass_confirm.tr(),
                    labelStyle: AppStyles.mediumStyle(
                      color: AppColors.labelColor,
                    ),
                  ),
                ],
              ),

              Gap(Sizes.getHeight(context) * 0.05),

              CustomButton(
                text: LocaleKeys.button_save.tr(),
                press: () {
                  if (profileCubit.changePassFormKey.currentState!
                      .validate()) {}
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
