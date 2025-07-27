import 'dart:ui';

import 'package:booking/core/theme/app_colors.dart';
import 'package:booking/core/theme/app_styles.dart';
import 'package:booking/core/widgets/drop_down_widget.dart';
import 'package:booking/generated/locale_keys.g.dart';
import 'package:booking/modules/menu/presentation/screens/dependents/data/model/dependent_model.dart';
import 'package:booking/modules/menu/presentation/screens/dependents/presentation/widgets/action_btn_widget.dart';
import 'package:booking/modules/menu/presentation/screens/dependents/presentation/widgets/build_details_row_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';

class DependantListItem extends StatelessWidget {
  final Dependant dependant;
  final VoidCallback onEdit;
  final VoidCallback onDelete;

  const DependantListItem({
    super.key,
    required this.dependant,
    required this.onEdit,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shadowColor: Colors.grey.shade200,
      color: AppColors.whiteColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
      child: ExpansionTile(
        shape: const Border(),
        collapsedShape: const Border(),
        title: Text(dependant.name, style: AppStyles.boldStyle(fontSize: 18)),
        childrenPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
        children: [
          BuildDetailsRowWidget(
            icon: FontAwesomeIcons.user,
            label: LocaleKeys.label_relation.tr(),
            value: dependant.relation,
          ),

          Gap(4.h),
          BuildDetailsRowWidget(
            icon: FontAwesomeIcons.envelope,
            label: LocaleKeys.label_email.tr(),
            value: dependant.email,
          ),
          Gap(4.h),

          BuildDetailsRowWidget(
            icon: FontAwesomeIcons.phone,
            label: LocaleKeys.label_phone.tr(),
            value: dependant.phone,
          ),
          Gap(12.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ActionButton(icon: FontAwesomeIcons.pen, onTap: onEdit),
              Gap(12.w),
              ActionButton(
                icon: FontAwesomeIcons.trash,
                onTap: onDelete,
                color: AppColors.failureRedColor,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
