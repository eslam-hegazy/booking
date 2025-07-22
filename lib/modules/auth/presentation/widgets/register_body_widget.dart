import 'package:booking/core/utils/app_sizes.dart';
import 'package:booking/modules/auth/logic/register_cubit/register_cubit.dart';
import 'package:booking/core/utils/export_files.dart';
import 'package:booking/core/widgets/custom_button.dart';
import 'package:booking/modules/auth/presentation/widgets/register_fields_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:gap/gap.dart';

class RegisterBodyWidget extends StatefulWidget {
  const RegisterBodyWidget({super.key});

  @override
  State<RegisterBodyWidget> createState() => _RegisterBodyWidgetState();
}

class _RegisterBodyWidgetState extends State<RegisterBodyWidget> {
  bool isChanged = false;
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
                LocaleKeys.button_register.tr(),
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
            children: [
              RegisterFieldsWidget(),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Checkbox(
                      value: isChanged,
                      onChanged: (v) {
                        isChanged = v ?? false;
                        setState(() {});
                      },
                    ),
                  ),
                  Expanded(
                    flex: 8,
                    child: Text(
                      LocaleKeys.option_subscribeToNewsletter.tr(),
                      style: AppStyles.mediumStyle(fontSize: 12.sp),
                    ),
                  ),
                ],
              ),
              Gap(20.h),
              CustomButton(
                text: LocaleKeys.button_register.tr(),
                press: () {
                  if (registerCubit.registerFormKey.currentState?.validate() ??
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
