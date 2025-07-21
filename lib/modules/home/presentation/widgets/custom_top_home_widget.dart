import 'package:booking/core/utils/export_files.dart';
import 'package:booking/core/widgets/custom_button.dart';
import 'package:booking/core/widgets/drop_down_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';

class CustomTopHomeWidget extends StatelessWidget {
  const CustomTopHomeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height * 0.4,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Assets.imagesHerohome),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        color: AppColors.b200Color.withOpacity(0.4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              LocaleKeys.text_heroTitle.tr(),
              style: AppStyles.boldStyle(color: AppColors.whiteColor),
            ),
            Container(
              padding: EdgeInsets.all(14.h),
              margin: EdgeInsets.all(18.h),
              decoration: BoxDecoration(
                color: AppColors.whiteColor.withOpacity(0.8),
                borderRadius: BorderRadius.circular(10.h),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: DropdownListWidget(
                          currentValue: "State",
                          listValues: ["State"],
                        ),
                      ),
                      10.w.pw,
                      Expanded(
                        child: DropdownListWidget(
                          currentValue: "Region",
                          listValues: ["Region"],
                        ),
                      ),
                    ],
                  ),
                  10.h.ph,
                  Row(
                    children: [
                      Expanded(
                        child: DropdownListWidget(
                          currentValue: "Category",
                          listValues: ["Category"],
                        ),
                      ),
                      10.w.pw,
                      Expanded(
                        child: DropdownListWidget(
                          currentValue: "Authority",
                          listValues: ["Authority"],
                        ),
                      ),
                    ],
                  ),
                  12.h.ph,
                  CustomButton(text: LocaleKeys.button_search.tr(), press: (){},backgroundColor: AppColors.greyColor,)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
