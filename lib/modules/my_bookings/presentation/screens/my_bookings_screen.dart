import 'package:booking/core/utils/export_files.dart';
import 'package:booking/modules/my_bookings/presentation/widgets/my_booking_view_widget.dart';
import 'package:easy_localization/easy_localization.dart';

class MyBookingsScreen extends StatelessWidget {
  const MyBookingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              10.h.ph,
              Text(
                LocaleKeys.title_myBookings.tr(),
                style: AppStyles.boldStyle(
                  color: AppColors.primaryColor,
                  fontSize: 22,
                ),
              ),
              14.h.ph,
              MyBookingsViewWidget(),
              10.h.ph,
            ],
          ),
        ),
      ),
    );
  }
}

