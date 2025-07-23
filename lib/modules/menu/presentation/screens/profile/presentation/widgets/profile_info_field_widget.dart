import 'package:booking/core/utils/export_files.dart';
import 'package:booking/core/widgets/custom_text_form_field.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';

class ProfileInfoField extends StatelessWidget {
  final String label;
  final IconData icon;
  final TextEditingController controller;
  final bool isEditMode;
  final bool isEditable;

  const ProfileInfoField({
    super.key,
    required this.label,
    required this.icon,
    required this.controller,
    required this.isEditMode,
    this.isEditable = true,
  });

  @override
  Widget build(BuildContext context) {
    return isEditMode && isEditable
        ? CustomTextFormField(
            controller: controller,
            title: label,
            labelStyle: AppStyles.mediumStyle(
              color: AppColors.labelColor,
              fontSize: 14.sp,
            ),
          )
        : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: AppStyles.mediumStyle(
                  color: AppColors.labelColor,
                  fontSize: 14.sp,
                ),
              ),
              Gap(8.h),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 14.h),
                decoration: BoxDecoration(
                  color: isEditable ? Colors.white : Colors.grey.shade100,
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Row(
                  children: [
                    FaIcon(icon, size: 18.sp, color: AppColors.mutedGray),
                    Gap(12.w),
                    Text(
                      controller.text,
                      style: AppStyles.mediumStyle(fontSize: 16.sp),
                    ),
                  ],
                ),
              ),
            ],
          );
  }
}
