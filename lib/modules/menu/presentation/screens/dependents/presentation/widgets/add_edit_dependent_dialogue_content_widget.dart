import 'package:booking/core/theme/app_colors.dart';
import 'package:booking/core/theme/app_styles.dart';
import 'package:booking/core/utils/app_dialogues.dart';
import 'package:booking/core/utils/validations.dart';
import 'package:booking/core/widgets/custom_text_form_field.dart';
import 'package:booking/generated/locale_keys.g.dart';
import 'package:booking/modules/menu/presentation/screens/dependents/data/model/dependent_model.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class AddEditDependantDialog extends StatefulWidget {
  final Dependant? dependant;
  const AddEditDependantDialog({super.key, this.dependant});

  @override
  State<AddEditDependantDialog> createState() => AddEditDependantDialogState();
}

class AddEditDependantDialogState extends State<AddEditDependantDialog> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _nameController;
  late final TextEditingController _relationController;
  late final TextEditingController _emailController;
  late final TextEditingController _phoneController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.dependant?.name ?? '');
    _relationController = TextEditingController(
      text: widget.dependant?.relation ?? '',
    );
    _emailController = TextEditingController(
      text: widget.dependant?.email ?? '',
    );
    _phoneController = TextEditingController(
      text: widget.dependant?.phone ?? '',
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    _relationController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  void _onSave() {
    if (_formKey.currentState!.validate()) {
      final dependant = Dependant(
        id: widget.dependant?.id ?? DateTime.now().toIso8601String(),
        name: _nameController.text,
        relation: _relationController.text,
        email: _emailController.text,
        phone: _phoneController.text,
      );
      Navigator.of(context).pop(dependant);
    }
  }

  @override
  Widget build(BuildContext context) {
    final isEditing = widget.dependant != null;
    return DialogAndBottomSheets.showInfoDialog(
      title: Text(
        isEditing
            ? LocaleKeys.title_editDependent.tr()
            : LocaleKeys.button_addDependent.tr(),
        style: AppStyles.boldStyle(color: AppColors.primaryColor),
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomTextFormField(
                controller: _nameController,
                title: LocaleKeys.label_name.tr(),
                labelStyle: AppStyles.mediumStyle(color: AppColors.labelColor),
              ),
              Gap(12.h),
              CustomTextFormField(
                controller: _relationController,
                title: LocaleKeys.label_relation.tr(),
                labelStyle: AppStyles.mediumStyle(color: AppColors.labelColor),
              ),
              Gap(12.h),
              CustomTextFormField(
                controller: _emailController,
                title: LocaleKeys.label_email.tr(),
                validator: (p0) => validateEmail(p0),
                labelStyle: AppStyles.mediumStyle(color: AppColors.labelColor),
              ),
              Gap(12.h),
              CustomTextFormField(
                controller: _phoneController,
                title: LocaleKeys.label_phoneNumber.tr(),
                validator: (p0) => validatePhoneNumber(p0),
                labelStyle: AppStyles.mediumStyle(color: AppColors.labelColor),
              ),
            ],
          ),
        ),
      ),

      actions: [
        OutlinedButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text(
            LocaleKeys.button_cancel.tr(),
            style: TextStyle(color: Colors.grey),
          ),
        ),
        ElevatedButton(
          onPressed: _onSave,
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primaryColor,
          ),
          child: Text(
            LocaleKeys.button_save.tr(),
            style: AppStyles.mediumStyle(
              fontSize: 14.sp,
              color: AppColors.whiteColor,
            ),
          ),
        ),
      ],
    );
  }
}
