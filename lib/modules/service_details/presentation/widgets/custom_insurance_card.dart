import 'package:booking/core/utils/export_files.dart';

class CustomInsuranceCard extends StatelessWidget {
  const CustomInsuranceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Insurance Companies", style: AppStyles.boldStyle(fontSize: 18)),
          10.h.ph,
          Wrap(
            spacing: 10.w,
            runSpacing: 10.h,
            children: [
              _customItem(title: "Allianz"),
              _customItem(title: "AXA"),
              _customItem(title: "MetLife"),
              _customItem(title: "Prudential"),
              _customItem(title: "Cigna"),
            ],
          ),
        ],
      ),
    );
  }

  Widget _customItem({required String title}) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 10.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.h),
        border: Border.all(color: AppColors.primaryColor),
      ),
      child: Text(
       title,
        style: AppStyles.boldStyle(fontSize: 14, color: AppColors.primaryColor),
      ),
    );
  }
}
