import 'package:booking/core/theme/app_colors.dart';
import 'package:booking/core/theme/app_styles.dart';
import 'package:booking/core/utils/app_dialogues.dart';
import 'package:booking/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class DeleteDependentWidget extends StatefulWidget {
  const DeleteDependentWidget({super.key});

  @override
  State<DeleteDependentWidget> createState() => _DeleteDependentWidgetState();
}

class _DeleteDependentWidgetState extends State<DeleteDependentWidget> {
  @override
  Widget build(BuildContext context) {
    return DialogAndBottomSheets.showInfoDialog(
      actions: [
        TextButton(
          onPressed: () => Get.back(result: false),
          child: Text(
            LocaleKeys.button_cancel.tr(),
            style: AppStyles.mediumStyle(
              fontSize: 14.sp,
              color: AppColors.darkBlueColor,
            ),
          ),
        ),
        TextButton(
          onPressed: () => Get.back(result: true),
          child: Text(
            LocaleKeys.button_delete.tr(),
            style: AppStyles.mediumStyle(
              fontSize: 14.sp,
              color: AppColors.failureRedColor,
            ),
          ),
        ),
      ],
      body: Text(
        LocaleKeys.confirm_delete_dependant.tr(),
        style: AppStyles.mediumStyle(),
      ),
      title: Text(
        LocaleKeys.title_deleteDependent.tr(),
        style: AppStyles.mediumStyle(color: AppColors.primaryColor),
      ),
    );
  }
}
