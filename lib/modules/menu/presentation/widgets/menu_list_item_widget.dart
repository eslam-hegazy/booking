import 'package:booking/core/utils/export_files.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';

class MenuListItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color? color;
  final Widget? trailing;
  final VoidCallback onTap;

  const MenuListItem({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
    this.trailing,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: Colors.grey.shade200, width: 1),
          ),
        ),
        child: Row(
          children: [
            SizedBox(
              width: 24.w,
              child: Center(
                child: FaIcon(
                  icon,
                  size: 20.sp,
                  color: color ?? AppColors.primaryColor,
                ),
              ),
            ),
            Gap(20.w),
            Expanded(
              child: Text(
                title.tr(),
                style: AppStyles.mediumStyle(
                  fontSize: 14.sp,
                  color: color ?? AppColors.darkBlueColor,
                ),
              ),
            ),
            if (trailing != null) trailing!,
          ],
        ),
      ),
    );
  }
}
