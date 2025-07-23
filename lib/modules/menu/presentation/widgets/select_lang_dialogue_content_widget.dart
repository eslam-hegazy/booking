import 'package:booking/core/utils/export_files.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:gap/gap.dart';

class SelectLangDialogueContentWidget extends StatefulWidget {
  const SelectLangDialogueContentWidget({super.key});

  @override
  State<SelectLangDialogueContentWidget> createState() =>
      _SelectLangDialogueContentWidgetState();
}

class _SelectLangDialogueContentWidgetState
    extends State<SelectLangDialogueContentWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 210.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Gap(16.h),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: 40.w,
              height: 4.h,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          ),
          Gap(24.h),

          Text(
            LocaleKeys.select_lang.tr(),
            style: AppStyles.mediumStyle(color: AppColors.labelColor),
          ),
          Gap(24.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Radio<String>(
                value: 'en',
                groupValue: context.locale.languageCode,
                activeColor: AppColors.primaryColor,
                onChanged: (value) async {
                  Navigator.of(context).pop('en');
                },
              ),
              Text(
                'English',
                style: AppStyles.mediumStyle(color: AppColors.labelColor),
              ),
              SizedBox(width: 24.w),
              Radio<String>(
                value: 'ar',
                groupValue: context.locale.languageCode,
                activeColor: AppColors.primaryColor,
                onChanged: (value) async {
                  Navigator.of(context).pop('ar');
                },
              ),
              Text(
                'اللغة العربية',
                style: AppStyles.mediumStyle(color: AppColors.labelColor),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
