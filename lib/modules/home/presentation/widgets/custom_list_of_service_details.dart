import 'package:booking/core/app_router/app_router.dart';
import 'package:booking/core/utils/export_files.dart';
import 'package:booking/core/widgets/custom_button.dart';
import 'package:booking/core/widgets/custom_cache_image.dart';
import 'package:booking/core/widgets/custom_star_widget.dart';
import 'package:booking/modules/service_details/presentation/screens/service_details_screen.dart';

class CustomListOfServiceDetails extends StatelessWidget {
  const CustomListOfServiceDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (_, index) {
        return _customItem();
      },
      separatorBuilder: (_, index) => 26.h.ph,
      itemCount: 10,
    );
  }

  Widget _customItem() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () => AppRouter.to(() => ServiceDetailsScreen()),
                child: CustomCachedImage(
                  imageUrl:
                      "https://images.pexels.com/photos/32998277/pexels-photo-32998277.jpeg",
                  borderRadius: BorderRadius.circular(12),
                  height: 85.h,
                  width: 90.w,
                  fit: BoxFit.fill,
                ),
              ),
              2.h.ph,
              CustomStarsWidget(lightStar: 3),
            ],
          ),
        ),
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("City Hospital", style: AppStyles.boldStyle(fontSize: 16)),
                Text(
                  "City Hospital healthcare services",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppStyles.lightStyle(fontSize: 12),
                ),
                Text(
                  "213 Main St,City Center",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppStyles.lightStyle(
                    fontSize: 12,
                    color: AppColors.b100Color,
                  ),
                ),
                Text(
                  "Category: Hospitals",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppStyles.lightStyle(
                    fontSize: 12,
                    color: AppColors.b100Color,
                  ),
                ),
                Text(
                  "Price: 25 KD",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppStyles.boldStyle(
                    fontSize: 14,
                    color: AppColors.primaryColor,
                  ),
                ),
                2.h.ph,
                CustomButton(text: "Book Now", height: 38.h, press: () {}),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
