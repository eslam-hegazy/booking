import 'package:booking/core/utils/export_files.dart';
import 'package:booking/core/utils/validations.dart';
import 'package:booking/core/widgets/custom_text_form_field.dart';
import 'package:booking/modules/auth/logic/login_cubit/login_cubit.dart';
import 'package:booking/modules/auth/logic/register_cubit/register_cubit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:gap/gap.dart';

class RegisterFieldsWidget extends StatefulWidget {
  const RegisterFieldsWidget({super.key});

  @override
  State<RegisterFieldsWidget> createState() => _RegisterFieldsWidgetState();
}

class _RegisterFieldsWidgetState extends State<RegisterFieldsWidget> {
  late final RegisterCubit registerCubit;
  @override
  void initState() {
    super.initState();
    registerCubit = RegisterCubit.get(context);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Gap(20.h),
        CustomTextFormField(
          controller: registerCubit.fullNameController,
          // validator: (p0) => validateEmail(p0),
          title: LocaleKeys.label_fullName.tr(),
          labelStyle: AppStyles.mediumStyle(color: AppColors.labelColor),
        ),
        Gap(16.h),
        CustomTextFormField(
          controller: registerCubit.phoneController,
          validator: (p0) => validatePhoneNumber(p0),
          title: LocaleKeys.label_phoneNumber.tr(),
          labelStyle: AppStyles.mediumStyle(color: AppColors.labelColor),
        ),
        Gap(16.h),
        CustomTextFormField(
          controller: registerCubit.emailController,
          title: LocaleKeys.label_email.tr(),
          validator: (p0) => validateEmail(p0),

          labelStyle: AppStyles.mediumStyle(color: AppColors.labelColor),
        ),
        Gap(16.h),
      ],
    );
  }
}
