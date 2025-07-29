import 'package:booking/core/utils/export_files.dart';
import 'package:booking/core/widgets/custom_star_widget.dart';
import 'package:booking/modules/home/presentation/widgets/custom_image_card.dart';
import 'package:booking/modules/service_details/presentation/widgets/custom_description_card.dart';
import 'package:booking/modules/service_details/presentation/widgets/custom_insurance_card.dart';
import 'package:booking/modules/service_details/presentation/widgets/custom_main_card.dart';
import 'package:booking/modules/service_details/presentation/widgets/custom_rating_card.dart';
import 'package:booking/modules/service_details/presentation/widgets/custom_review_list.dart';

class ServiceDetailsScreen extends StatelessWidget {
  const ServiceDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backCircleColor,
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 14.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              10.h.ph,
              Text(
                "City Hospital",
                style: AppStyles.boldStyle(color: AppColors.primaryColor),
              ),
              20.h.ph,
              CustomMainCard(),
              20.h.ph,
              CustomDescriptionCard(),
              20.h.ph,
              CustomInsuranceCard(),
              20.h.ph,
              CustomImageCard(),
              20.h.ph,
              CustomRatingCard(),
              20.h.ph,
              CustomReviewList(),
              20.h.ph,
            ],
          ),
        ),
      ),
    );
  }
}
