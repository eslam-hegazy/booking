import 'dart:developer';

import 'package:booking/core/app_router/app_router.dart';
import 'package:booking/core/utils/app_dialogues.dart';
import 'package:booking/core/utils/app_locale.dart';
import 'package:booking/core/utils/export_files.dart';
import 'package:booking/modules/menu/presentation/screens/profile/presentation/profile_screen.dart';
import 'package:booking/modules/menu/presentation/widgets/menu_list_item_widget.dart';
import 'package:booking/modules/menu/presentation/widgets/select_country_dialogue_content_widget.dart';
import 'package:booking/modules/menu/presentation/widgets/select_lang_dialogue_content_widget.dart';
import 'package:country_picker/country_picker.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  Country? _selectedCountry;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          LocaleKeys.title_menu.tr(),
          style: AppStyles.boldStyle(color: Colors.white),
        ),
        backgroundColor: AppColors.primaryColor,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            MenuListItem(
              icon: FontAwesomeIcons.user,
              title: LocaleKeys.title_profile,
              onTap: () {
                AppRouter.to(() => ProfileScreen());
              },
            ),
            MenuListItem(
              icon: FontAwesomeIcons.globe,
              title: LocaleKeys.link_country,
              trailing: Row(
                children: [
                  Text(_selectedCountry?.flagEmoji ?? '🇰🇼'),
                  Gap(8.w),
                  Text(
                    _selectedCountry?.name ?? LocaleKeys.country_kuwait.tr(),
                    style: AppStyles.mediumStyle(color: AppColors.mutedGray),
                  ),
                  Gap(4.w),
                  const Icon(Icons.arrow_drop_down, color: AppColors.mutedGray),
                ],
              ),
              onTap: () {
                DialogAndBottomSheets.showCustomBottomSheet(
                  child: ChangeCountryDialogueContentWidget(),
                  onClose: (value) {
                    if (value != null) {
                      _selectedCountry = value as Country;
                      setState(() {});
                    }
                  },
                );
              },
            ),
            MenuListItem(
              icon: FontAwesomeIcons.language,
              title: LocaleKeys.link_language,
              trailing: Row(
                children: [
                  Text(
                    AppRouter.currentContext?.locale.languageCode == 'ar'
                        ? 'العربية'
                        : 'English',
                    style: AppStyles.mediumStyle(color: AppColors.mutedGray),
                  ),
                  Gap(4.w),
                  const Icon(Icons.arrow_drop_down, color: AppColors.mutedGray),
                ],
              ),
              onTap: () {
                DialogAndBottomSheets.showCustomBottomSheet(
                  child: SelectLangDialogueContentWidget(),
                  onClose: (value) {
                    if (value != null && value is String) {
                      AppLocale.toggleLocale();

                      setState(() {});
                    }
                  },
                );
              },
            ),
            MenuListItem(
              icon: FontAwesomeIcons.users,
              title: LocaleKeys.title_dependents,
              onTap: () {},
            ),
            MenuListItem(
              icon: FontAwesomeIcons.circleQuestion,
              title: LocaleKeys.title_support,
              onTap: () {},
            ),
            MenuListItem(
              icon: FontAwesomeIcons.fileLines,
              title: LocaleKeys.link_termsOfUse,
              onTap: () {},
            ),
            MenuListItem(
              icon: FontAwesomeIcons.shieldHalved,
              title: LocaleKeys.link_privacyPolicy,
              onTap: () {},
            ),
            MenuListItem(
              icon: FontAwesomeIcons.star,
              title: LocaleKeys.link_rateApp,
              onTap: () {},
            ),
            MenuListItem(
              icon: FontAwesomeIcons.rightFromBracket,
              title: LocaleKeys.action_logout,
              color: AppColors.failureRedColor,
              onTap: () {},
            ),

            Gap(40.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: const FaIcon(
                    FontAwesomeIcons.facebook,
                    color: AppColors.mutedGray,
                  ),
                  onPressed: () {},
                ),
                Gap(16.w),
                IconButton(
                  icon: const FaIcon(
                    FontAwesomeIcons.instagram,
                    color: AppColors.mutedGray,
                  ),
                  onPressed: () {},
                ),
                Gap(16.w),
                IconButton(
                  icon: const FaIcon(
                    FontAwesomeIcons.twitter,
                    color: AppColors.mutedGray,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            Gap(8.h),
            Text(
              'Version 1.0.0',
              style: AppStyles.lightStyle(
                color: AppColors.mutedGray,
                fontSize: 12,
              ),
            ),
            Gap(20.h),
          ],
        ),
      ),
    );
  }
}
