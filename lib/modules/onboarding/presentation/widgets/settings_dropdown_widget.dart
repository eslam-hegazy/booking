import 'package:booking/core/theme/app_styles.dart';
import 'package:booking/core/utils/export_files.dart';
import 'package:booking/core/widgets/custom_image_widget.dart';

class SettingsDropdown extends StatelessWidget {
  final String label;
  final String icon;

  const SettingsDropdown({super.key, required this.label, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: AppColors.b50Color),
      ),
      child: Row(
        children: [
          ImageIconWidget(icon: icon, height: 24),
          SizedBox(width: 12.w),
          Expanded(
            child: Text(
              label,
              style: AppStyles.mediumStyle(color: AppColors.b300Color),
            ),
          ),
          const Icon(Icons.keyboard_arrow_down, color: AppColors.b100Color),
        ],
      ),
    );
  }
}
