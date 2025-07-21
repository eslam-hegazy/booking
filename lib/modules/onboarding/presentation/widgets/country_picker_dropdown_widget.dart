import 'package:booking/core/app_assets/app_assets.dart';
import 'package:booking/core/utils/export_files.dart';
import 'package:booking/core/widgets/custom_image_widget.dart';
import 'package:country_picker/country_picker.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:gap/gap.dart';

class CountryPickerDropdown extends StatelessWidget {
  final Country? country;
  final VoidCallback onTap;

  const CountryPickerDropdown({
    super.key,
    required this.country,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(color: AppColors.b50Color),
        ),
        child: Row(
          children: [
            if (country != null) ...[
              Text(country!.flagEmoji, style: TextStyle(fontSize: 16.sp)),
              Gap(12.w),
              Expanded(
                child: Text(
                  country!.name,
                  style: AppStyles.mediumStyle(
                    fontSize: 12.sp,
                    color: AppColors.mutedGray,
                  ),
                ),
              ),
            ] else ...[
              Expanded(
                child: Text(
                  LocaleKeys.prompt_selectCountry.tr(),
                  style: AppStyles.mediumStyle(
                    fontSize: 12.sp,
                    color: AppColors.mutedGray,
                  ),
                ),
              ),
            ],
            ImageIconWidget(
              icon: Assets.iconsArrowDown,
              iconType: ImageIconType.normal,
              height: 12.h,
              width: 12.w,
            ),
          ],
        ),
      ),
    );
  }
}
