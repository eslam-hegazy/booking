import 'package:booking/core/utils/export_files.dart';
import 'package:booking/core/utils/validations.dart';
import 'package:booking/core/widgets/custom_text_form_field.dart';
import 'package:booking/modules/auth/logic/login_cubit/login_cubit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:gap/gap.dart';

class RegisterFieldsWidget extends StatefulWidget {
  const RegisterFieldsWidget({super.key});

  @override
  State<RegisterFieldsWidget> createState() => _RegisterFieldsWidgetState();
}

class _RegisterFieldsWidgetState extends State<RegisterFieldsWidget> {
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
        Gap(20.h),
        CustomTextFormField(
          controller: loginCubit.emailOrUsernameController,
          validator: (p0) => validateEmail(p0),
          title: LocaleKeys.label_fullName.tr(),
          labelStyle: AppStyles.mediumStyle(color: AppColors.labelColor),
        ),
        Gap(16.h),
        CustomTextFormField(
          controller: loginCubit.emailOrUsernameController,
          validator: (p0) => validateEmail(p0),
          title: LocaleKeys.label_phoneNumber.tr(),
          labelStyle: AppStyles.mediumStyle(color: AppColors.labelColor),
        ),
        Gap(16.h),
        CustomTextFormField(
          controller: loginCubit.passController,
          title: LocaleKeys.label_email.tr(),
          isPassword: true,
          labelStyle: AppStyles.mediumStyle(color: AppColors.labelColor),
        ),
        Gap(16.h),
      ],
    );
  }
}
