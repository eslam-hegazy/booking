import 'package:booking/core/utils/export_files.dart';
import 'package:booking/core/widgets/custom_button.dart';
import 'package:booking/modules/onboarding/presentation/widgets/country_picker_dropdown_widget.dart';
import 'package:country_picker/country_picker.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:gap/gap.dart';

class ChangeCountryDialogueContentWidget extends StatefulWidget {
  const ChangeCountryDialogueContentWidget({super.key});

  @override
  State<ChangeCountryDialogueContentWidget> createState() =>
      _ChangeCountryDialogueContentWidgetState();
}

class _ChangeCountryDialogueContentWidgetState
    extends State<ChangeCountryDialogueContentWidget> {
  Country? _selectedCountry;
  @override
  void initState() {
    super.initState();
    _selectedCountry = CountryService().findByCode('KW');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 300.h,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
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
            CountryPickerDropdown(
              country: _selectedCountry,
              onTap: () {
                showCountryPicker(
                  context: context,
                  showPhoneCode: false,

                  onSelect: (Country country) {
                    setState(() {
                      _selectedCountry = country;
                    });
                  },
                  countryListTheme: CountryListThemeData(
                    textStyle: AppStyles.lightStyle(),

                    searchTextStyle: AppStyles.lightStyle(),

                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.r),
                      topRight: Radius.circular(20.r),
                    ),
                    inputDecoration: InputDecoration(
                      hintStyle: AppStyles.lightStyle(),

                      prefixIcon: const Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColors.b100Color.withOpacity(0.2),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
            Gap(24.h),
            CustomButton(
              text: LocaleKeys.button_save.tr(),
              press: () {
                Navigator.pop(context, _selectedCountry);
              },
            ),
          ],
        ),
      ),
    );
  }
}
