import 'package:booking/core/utils/export_files.dart';

class CustomCardBookingDetails extends StatelessWidget {
  final IconData icon;
  final String title;
  final List<Widget> data;
  const CustomCardBookingDetails({
    super.key,
    required this.icon,
    required this.title,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                Icon(icon, color: AppColors.primaryColor, size: 25.h),
                6.w.pw,
                Text(
                  title,
                  style: AppStyles.boldStyle(
                    color: AppColors.primaryColor,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            Divider(),
            10.h.ph,
            Column(children: data),
          ],
        ),
      ),
    );
  }
}
