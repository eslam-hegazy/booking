import 'package:booking/core/utils/export_files.dart';
import 'package:booking/core/widgets/custom_button.dart';
import 'package:booking/core/widgets/custom_image_widget.dart';
import 'package:booking/core/widgets/custom_qrcode_widget.dart';
import 'package:booking/modules/my_bookings/presentation/widgets/custom_card_booking_details.dart';
import 'package:easy_localization/easy_localization.dart';

class BookingDetailsScreen extends StatelessWidget {
  const BookingDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(iconTheme: IconThemeData(color: AppColors.whiteColor)),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              20.h.ph,
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Text(
                      LocaleKeys.booking_details.tr(),
                      style: AppStyles.boldStyle(
                        color: AppColors.primaryColor,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: CustomButton(
                      text: LocaleKeys.capure.tr(),
                      radius: 10.h,
                      height: 40.h,
                      icon: Icons.camera_alt_rounded,
                      press: () {},
                    ),
                  ),
                ],
              ),
              14.h.ph,
              CustomCardBookingDetails(
                icon: Icons.person,
                title: LocaleKeys.custom_details.tr(),
                data: [
                  _customItem(
                    title: LocaleKeys.label_name.tr(),
                    description: "johan",
                  ),
                  _customItem(
                    title: LocaleKeys.label_phone.tr(),
                    description: "+201019211216",
                  ),
                  _customItem(
                    title: LocaleKeys.label_email.tr(),
                    description: "johan@gmail.com",
                  ),
                  _customItem(
                    title: LocaleKeys.label_status.tr(),
                    description: "New Customer",
                  ),
                ],
              ),
              20.h.ph,
              CustomCardBookingDetails(
                icon: Icons.business_rounded,
                title: LocaleKeys.authority_details.tr(),
                data: [
                  _customItem(
                    title: LocaleKeys.label_region.tr(),
                    description: "North Region",
                  ),
                  _customItem(
                    title: LocaleKeys.address.tr(),
                    description: "123 Main North",
                  ),
                  _customItem(
                    title: LocaleKeys.main_department.tr(),
                    description: "Health Department",
                  ),
                  _customItem(
                    title: LocaleKeys.specialty.tr(),
                    description: "General Medicine",
                  ),
                  _customItem(
                    title: LocaleKeys.service.tr(),
                    description: "Consultation",
                  ),
                ],
              ),
              20.h.ph,
              CustomCardBookingDetails(
                icon: Icons.event,
                title: LocaleKeys.booking_details.tr(),
                data: [
                  _customItem(
                    title: LocaleKeys.booking_number.tr(),
                    description: "BKskds54",
                  ),
                  _customItem(
                    title: LocaleKeys.date.tr(),
                    description: "2023-10-15",
                  ),
                  _customItem(
                    title: LocaleKeys.time.tr(),
                    description: "10:00 AM",
                  ),
                  _customItem(
                    title: LocaleKeys.status.tr(),
                    description: "Active",
                  ),
                ],
              ),
              20.h.ph,
              CustomCardBookingDetails(
                icon: Icons.qr_code,
                title: LocaleKeys.qr_code.tr(),
                data: [
                  CustomQrCodeWidget(
                    data: "data",
                    size: 250.h,
                    padding: EdgeInsets.symmetric(vertical: 12.h),
                  ),
                ],
              ),
              20.h.ph,
              CustomCardBookingDetails(
                icon: Icons.location_on_rounded,
                title: LocaleKeys.location.tr(),
                data: [
                  20.h.ph,
                  ImageIconWidget(icon: Assets.imagesHerohome),
                  20.h.ph,
                ],
              ),
              30.h.ph,
            ],
          ),
        ),
      ),
    );
  }

  Widget _customItem({
    required String title,
    required String description,
    Color? descriptionColor,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.h),
      child: Row(
        children: [
          Text("$title: ", style: AppStyles.boldStyle(fontSize: 17)),
          Text(
            description,
            style: AppStyles.mediumStyle(color: descriptionColor),
          ),
        ],
      ),
    );
  }
}
