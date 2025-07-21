import 'package:booking/core/theme/app_colors.dart';
import 'package:booking/core/theme/app_styles.dart';
import 'package:booking/core/utils/app_locale.dart';
import 'package:booking/core/widgets/drop_down_widget.dart';
import 'package:booking/generated/locale_keys.g.dart';
import 'package:booking/modules/onboarding/presentation/widgets/country_picker_dropdown_widget.dart';
import 'package:booking/modules/onboarding/presentation/widgets/logo_widget.dart';
import 'package:booking/modules/onboarding/presentation/widgets/slide_to_continue_btn_widget.dart';
import 'package:country_picker/country_picker.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class InitialSettingsScreen extends StatefulWidget {
  const InitialSettingsScreen({super.key});

  @override
  State<InitialSettingsScreen> createState() => _InitialSettingsScreenState();
}

class _InitialSettingsScreenState extends State<InitialSettingsScreen> {
  Country? _selectedCountry;
  @override
  void initState() {
    super.initState();
    _selectedCountry = CountryService().findByCode('KW');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 20.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Spacer(),
              const LogoWidget(),
              Gap(50.h),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    LocaleKeys.link_country.tr(),
                    style: AppStyles.mediumStyle(color: AppColors.labelColor),
                  ),
                  Gap(8.h),
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
                ],
              ),
              Gap(24.h),
              DropdownListWidget(
                listValues: ['English', 'عربي'],
                currentValue: 'عربي',
                dropdownTitle: LocaleKeys.link_language.tr(),
                onTap: (p0) {
                  AppLocale.toggleLocale();
                },
                dropdownTitleStyle: AppStyles.mediumStyle(
                  color: AppColors.labelColor,
                ),
              ),
              const Spacer(flex: 2),
              SlideToContinueButton(),
              Gap(20.h),
            ],
          ),
        ),
      ),
    );
  }
}
