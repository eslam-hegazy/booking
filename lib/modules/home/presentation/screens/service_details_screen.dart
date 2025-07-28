import 'package:booking/core/utils/export_files.dart';
import 'package:booking/core/widgets/custom_cache_image.dart';
import 'package:booking/core/widgets/custom_star_widget.dart';

class ServiceDetailsScreen extends StatelessWidget {
  const ServiceDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backCircleColor,
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 14.w),
        child: Column(
          children: [
            Text(
              "City Hospital",
              style: AppStyles.boldStyle(color: AppColors.primaryColor),
            ),
            Container(
              padding: EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  CustomCachedImage(
                    imageUrl:
                        "https://images.pexels.com/photos/32998277/pexels-photo-32998277.jpeg",
                    borderRadius: BorderRadius.circular(12),
                    height: 250.h,
                    width: double.infinity,
                    fit: BoxFit.fill,
                  ),
                  4.h.ph,
                  CustomStarsWidget(lightStar: 5)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
