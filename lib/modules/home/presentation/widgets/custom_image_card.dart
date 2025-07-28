import 'package:booking/core/utils/export_files.dart';

import '../../../../core/widgets/custom_cache_image.dart';

class CustomImageCard extends StatelessWidget {
  const CustomImageCard({
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
        children: [
          CustomCachedImage(
            imageUrl:
                "https://images.pexels.com/photos/32998277/pexels-photo-32998277.jpeg",
            borderRadius: BorderRadius.circular(10.h),
            width: double.infinity,
            height: 220.h,
          ),
          15.h.ph,
          SizedBox(
            height: 100.h,
            child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) {
                return CustomCachedImage(
                  imageUrl:
                      "https://images.pexels.com/photos/32998277/pexels-photo-32998277.jpeg",
                  borderRadius: BorderRadius.circular(10.h),
                  width: 100.w,
                );
              },
              separatorBuilder: (_, index) => 10.w.pw,
              itemCount: 5,
            ),
          ),
        ],
      ),
    );
  }
}
