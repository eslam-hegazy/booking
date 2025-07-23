import 'package:booking/core/app_router/app_router.dart';
import 'package:booking/core/utils/export_files.dart';
import 'package:booking/core/widgets/custom_button.dart';
import 'package:booking/core/widgets/custom_cache_image.dart';
import 'package:booking/modules/my_bookings/presentation/screens/booking_details_screen.dart';
import 'package:easy_localization/easy_localization.dart';

class MyBookingsViewWidget extends StatelessWidget {
  const MyBookingsViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.symmetric(horizontal: 14.w),
      shrinkWrap: true,
      itemBuilder: (_, index) {
        return _customItem();
      },
      separatorBuilder: (_, index) => 4.h.ph,
      itemCount: 10,
    );
  }

  Widget _customItem() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5.h),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.b100Color.withOpacity(0.5)),
        borderRadius: BorderRadius.circular(10.h),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomCachedImage(
              height: 100.h,
              width: 100.w,
              borderRadius: BorderRadius.circular(10.h),
              imageUrl:
                  "https://images.pexels.com/photos/32998277/pexels-photo-32998277.jpeg",
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Hotel California",
                  style: AppStyles.boldStyle(fontSize: 14),
                ),
                Text("Hotel", style: AppStyles.lightStyle(fontSize: 14)),
                Text(
                  "New",
                  style: AppStyles.lightStyle(
                    fontSize: 14,
                    color: AppColors.completedColor,
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: CustomButton(
                        text: LocaleKeys.button_details.tr(),
                        backgroundColor: AppColors.b300Color,
                        height: 38.h,
                        press: () {
                          AppRouter.to(()=>BookingDetailsScreen());
                        },
                      ),
                    ),
                    8.w.pw,
                    Expanded(
                      child: CustomButton(
                        text: LocaleKeys.button_cancel.tr(),
                        backgroundColor: AppColors.favoriteRedColor,
                        height: 38.h,
                        press: () {},
                      ),
                    ),
                    12.w.pw,
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
