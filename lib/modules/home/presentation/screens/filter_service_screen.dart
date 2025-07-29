import 'package:booking/core/app_router/app_router.dart';
import 'package:booking/core/utils/export_files.dart';
import 'package:booking/core/widgets/custom_button.dart';
import 'package:booking/core/widgets/custom_text_form_field.dart';
import 'package:booking/core/widgets/drop_down_widget.dart';
import 'package:booking/modules/home/presentation/widgets/custom_calender_table.dart';

class FilterServiceScreen extends StatelessWidget {
  const FilterServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.deepTealBlueColor,
        leading: Padding(
          padding: EdgeInsets.all(10.h),
          child: GestureDetector(
            onTap: () => AppRouter.back(),
            child: CircleAvatar(
              backgroundColor: AppColors.whiteColor,
              child: Icon(Icons.close, color: AppColors.redAccentColor),
            ),
          ),
        ),
        title: Text(
          "Filter",
          style: AppStyles.mediumStyle(color: AppColors.whiteColor),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.filter_list, color: AppColors.whiteColor),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 14.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              10.h.ph,
              _customTitle(
                icon: Icons.location_on_outlined,
                title: "Governorate",
              ),
              DropdownListWidget(
                currentValue: "Select Governorate",
                listValues: [],
              ),
              10.h.ph,
              _customTitle(icon: Icons.map_outlined, title: "Area"),
              DropdownListWidget(currentValue: "Select Area", listValues: []),
              10.h.ph,
              _customTitle(icon: Icons.format_list_bulleted, title: "Category"),
              DropdownListWidget(
                currentValue: "Select Category",
                listValues: [],
              ),
              10.h.ph,
              _customTitle(icon: Icons.security_outlined, title: "Authority"),
              DropdownListWidget(
                currentValue: "Select Authority",
                listValues: [],
              ),
              10.h.ph,
              _customTitle(icon: Icons.grid_view, title: "Section"),
              DropdownListWidget(
                currentValue: "Select Section",
                listValues: [],
              ),
              10.h.ph,
              _customTitle(
                icon: Icons.work_outline_rounded,
                title: "Specialization",
              ),
              DropdownListWidget(
                currentValue: "Select Specialization",
                listValues: [],
              ),
              10.h.ph,
              _customTitle(
                icon: Icons.work_outline_rounded,
                title: "Sub Specialization",
              ),
              DropdownListWidget(
                currentValue: "Select Sub Specialization",
                listValues: [],
              ),
              10.h.ph,
              _customTitle(icon: Icons.security_rounded, title: "Insurance"),
              DropdownListWidget(
                currentValue: "Select Insurance",
                listValues: [],
              ),
              10.h.ph,
              _customTitle(icon: Icons.money_sharp, title: "Price"),
              DropdownListWidget(currentValue: "Select Price", listValues: []),
              20.h.ph,
              Divider(),
              4.h.ph,
              _customTitle(
                icon: Icons.calendar_month_outlined,
                title: "Booking Slot",
              ),
              CustomCalenderTable(),
              20.h.ph,
              CustomButton(text: "Apply Filters", press: (){}),
              30.h.ph,
            ],
          ),
        ),
      ),
    );
  }

  Widget _customTitle({required IconData icon, required String title}) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: Row(
        children: [
          Icon(icon, color: AppColors.primaryColor, size: 25.h),
          2.w.pw,
          Text(title, style: AppStyles.mediumStyle(fontSize: 14)),
        ],
      ),
    );
  }
}
