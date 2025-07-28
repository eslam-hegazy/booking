import 'package:booking/core/utils/export_files.dart';
import 'package:booking/core/widgets/custom_button.dart';
import 'package:booking/core/widgets/custom_text_form_field.dart';
import 'package:booking/modules/home/presentation/widgets/custom_list_of_service_details.dart';

class CategoryServicesScreen extends StatelessWidget {
  const CategoryServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 14.w),
        child: ListView(
          children: [
            12.h.ph,
            CustomTextFormField(
              controller: TextEditingController(),
              hintText: "Search Services...",
              prefixIcon: Icon(Icons.search_rounded),
            ),
            16.h.ph,
            CustomButton(
              text: "Filter",
              height: 40.h,
              backgroundColor: AppColors.b300Color,
              icon: Icons.filter_list,
              press: () {},
            ),
            16.h.ph,
            CustomListOfServiceDetails(),
            20.h.ph,
          ],
        ),
      ),
    );
  }
}
