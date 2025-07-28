import 'package:booking/core/utils/export_files.dart';

class CustomDescriptionCard extends StatelessWidget {
  const CustomDescriptionCard({
    super.key,
  });

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
          Text(
            "City Hospital",
            style: AppStyles.boldStyle(fontSize: 18),
          ),
          10.h.ph,
          Text(
            "High quality healthcare services",
            style: AppStyles.lightStyle(
              fontSize: 12,
              color: AppColors.b100Color,
            ),
          ),
        ],
      ),
    );
  }
}
