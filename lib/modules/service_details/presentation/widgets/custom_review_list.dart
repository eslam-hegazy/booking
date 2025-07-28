import 'package:booking/core/utils/export_files.dart';
import 'package:booking/core/widgets/custom_star_widget.dart';

class CustomReviewList extends StatelessWidget {
  const CustomReviewList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (_, index) {
        return Container(
          padding: EdgeInsets.all(14),
          decoration: BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CustomStarsWidget(lightStar: 4, starSize: 22.h),
                  8.w.pw,
                  CircleAvatar(
                    radius: 12.h,
                    backgroundColor: AppColors.primaryColor,
                    child: Text(
                      "3",
                      style: AppStyles.mediumStyle(
                        color: AppColors.whiteColor,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
              8.h.ph,
              Text(
                "Great service and friendly staff!",
                style: AppStyles.lightStyle(),
              ),
              8.h.ph,
              Text(
                "Review by: John Doe",
                style: AppStyles.boldStyle(
                  color: AppColors.b200Color,
                  fontSize: 16,
                ),
              ),
              8.h.ph,
              Text(
                "2024-11-05",
                style: AppStyles.lightStyle(
                  color: AppColors.b75Color,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        );
      },
      separatorBuilder: (_, index) => 10.h.ph,
      itemCount: 3,
    );
  }
}
