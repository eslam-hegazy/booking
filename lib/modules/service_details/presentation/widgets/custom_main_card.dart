import 'package:booking/core/utils/export_files.dart';
import 'package:booking/core/widgets/custom_button.dart';
import 'package:booking/core/widgets/custom_cache_image.dart';
import 'package:booking/core/widgets/custom_star_widget.dart';

class CustomMainCard extends StatelessWidget {
  const CustomMainCard({super.key});

  @override
  Widget build(BuildContext context) {
     return Container(
      padding: EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
          CustomStarsWidget(lightStar: 4),
          10.h.ph,
          Text("City Hospital", style: AppStyles.boldStyle(fontSize: 18)),
          Text(
            "City Healthcare",
            style: AppStyles.lightStyle(
              fontSize: 12,
              color: AppColors.b100Color,
            ),
          ),
          Text(
            "Hospitals",
            style: AppStyles.lightStyle(
              fontSize: 12,
              color: AppColors.b100Color,
            ),
          ),
          Text(
            "123 Main St, City Center",
            style: AppStyles.lightStyle(
              fontSize: 12,
              color: AppColors.b100Color,
            ),
          ),
          25.h.ph,
          Text(
            "Price: 25 KD",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: AppStyles.boldStyle(
              fontSize: 14,
              color: AppColors.primaryColor,
            ),
          ),
          10.h.ph,
          CustomButton(text: "Book Now", press: () {}),
        ],
      ),
    );
  
  }
}