import 'package:booking/core/utils/app_sizes.dart';
import 'package:booking/core/utils/validations.dart';
import 'package:booking/core/widgets/custom_text_form_field.dart';
import 'package:booking/generated/locale_keys.g.dart';
import 'package:booking/modules/auth/logic/login_cubit/login_cubit.dart';
import 'package:booking/modules/auth/logic/register_cubit/register_cubit.dart';
import 'package:booking/modules/auth/presentation/widgets/add_pass_actions_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:booking/core/theme/app_colors.dart';
import 'package:booking/core/theme/app_styles.dart';

class AddPasswordScreen extends StatefulWidget {
  const AddPasswordScreen({super.key, this.isFromRegister = false});
  final bool isFromRegister;
  @override
  State<AddPasswordScreen> createState() => _AddPasswordScreenState();
}

class _AddPasswordScreenState extends State<AddPasswordScreen> {
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
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.primaryColor,
        leading: BackButton(color: AppColors.whiteColor),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 40.h),
        child: Form(
          key: widget.isFromRegister
              ? registerCubit.registerFormKey
              : loginCubit.resetPassFormKey,
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
                      LocaleKeys.add_your_pass.tr(),
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
                    CustomTextFormField(
                      controller: loginCubit.passController,
                      validator: (p0) => validatePassword(p0),
                      title: LocaleKeys.label_password.tr(),
                      labelStyle: AppStyles.mediumStyle(
                        color: AppColors.labelColor,
                      ),
                    ),
                    Gap(8.h),
                    CustomTextFormField(
                      controller: loginCubit.passConfirmController,
                      validator: (p0) => validateConfirmPassword(
                        p0,
                        loginCubit.passController.text,
                      ),
                      title: LocaleKeys.pass_confirm.tr(),
                      labelStyle: AppStyles.mediumStyle(
                        color: AppColors.labelColor,
                      ),
                    ),
                    AddPassActionsWidget(isFromRegister: widget.isFromRegister),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
