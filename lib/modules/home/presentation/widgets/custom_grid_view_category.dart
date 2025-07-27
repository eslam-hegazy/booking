import 'package:booking/core/app_router/app_router.dart';
import 'package:booking/core/utils/export_files.dart';
import 'package:booking/core/widgets/custom_cache_image.dart';
import 'package:booking/modules/home/presentation/screens/category_screen.dart';

class CustomGridViewCategory extends StatelessWidget {
  const CustomGridViewCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 20,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 0.9,
      ),
      itemBuilder: (context, index) {
        return _customItem();
      },
    );
  }

  Widget _customItem() {
    return GestureDetector(
      onTap: () => AppRouter.to(() => CategoryScreen()),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 8,
              offset: Offset(0, 4),
            ),
          ],
          color: AppColors.whiteColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: CustomCachedImage(
                imageUrl:
                    "https://images.pexels.com/photos/32998277/pexels-photo-32998277.jpeg",
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                ),
                width: double.infinity,
                fit: BoxFit.fill,
              ),
            ),
            4.h.ph,
            Text("Oxygen gym", style: AppStyles.boldStyle(fontSize: 15)),
            4.h.ph,
          ],
        ),
      ),
    );
  }
}
