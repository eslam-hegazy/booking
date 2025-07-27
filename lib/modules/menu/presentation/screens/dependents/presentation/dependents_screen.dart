import 'dart:developer';

import 'package:booking/core/utils/app_dialogues.dart';
import 'package:booking/core/widgets/custom_button.dart';
import 'package:booking/generated/locale_keys.g.dart';
import 'package:booking/modules/menu/presentation/screens/dependents/data/model/dependent_model.dart';
import 'package:booking/modules/menu/presentation/screens/dependents/presentation/widgets/add_edit_dependent_dialogue_content_widget.dart';
import 'package:booking/modules/menu/presentation/screens/dependents/presentation/widgets/delete_dependent_widget.dart';
import 'package:booking/modules/menu/presentation/screens/dependents/presentation/widgets/dependents_list_item_widget.dart';
import 'package:easy_localization/easy_localization.dart' as tr;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import 'package:booking/core/theme/app_colors.dart';
import 'package:booking/core/theme/app_styles.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class DependantsScreen extends StatefulWidget {
  const DependantsScreen({super.key});

  @override
  State<DependantsScreen> createState() => _DependantsScreenState();
}

class _DependantsScreenState extends State<DependantsScreen> {
  final List<Dependant> _dependants = [
    Dependant(
      id: '1',
      name: 'John Doe',
      relation: 'Son',
      email: 'john@example.com',
      phone: '123-456-7890',
    ),
    Dependant(
      id: '2',
      name: 'Jane Doe',
      relation: 'Daughter',
      email: 'jane@example.com',
      phone: '098-765-4321',
    ),
  ];

  void _addDependant() async {
    final newDependant = await showDialog<Dependant>(
      context: context,
      builder: (context) => const AddEditDependantDialog(),
    );
    if (newDependant != null) {
      setState(() => _dependants.add(newDependant));
    }
  }

  void _editDependant(Dependant dependant) async {
    final updatedDependant = await showDialog<Dependant>(
      context: context,
      builder: (context) => AddEditDependantDialog(dependant: dependant),
    );
    if (updatedDependant != null) {
      setState(() {
        final index = _dependants.indexWhere(
          (d) => d.id == updatedDependant.id,
        );
        if (index != -1) {
          _dependants[index] = updatedDependant;
        }
      });
    }
  }

  void _deleteDependant() async {
    log('Delete Dependant');
    await showDialog<dynamic>(
      context: context,
      builder: (context) => DeleteDependentWidget(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          LocaleKeys.link_dependents.tr(),
          style: AppStyles.boldStyle(color: Colors.white, fontSize: 18.sp),
        ),
        backgroundColor: AppColors.primaryColor,
        elevation: 0,
        actions: [
          Padding(
            padding: EdgeInsetsDirectional.only(end: 16.w),
            child: InkWell(
              onTap: _addDependant,
              child: Row(
                children: [
                  Icon(Icons.add, color: AppColors.whiteColor),
                  Text(
                    LocaleKeys.button_add.tr(),
                    style: AppStyles.boldStyle(
                      fontSize: 16.sp,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                itemCount: _dependants.length,
                separatorBuilder: (_, __) => Gap(12.h),
                itemBuilder: (context, index) {
                  final dependant = _dependants[index];
                  return DependantListItem(
                    dependant: dependant,
                    onEdit: () => _editDependant(dependant),
                    onDelete: () => _deleteDependant(),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
