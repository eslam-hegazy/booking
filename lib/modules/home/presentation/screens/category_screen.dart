import 'package:booking/core/utils/export_files.dart';
import 'package:booking/core/widgets/drop_down_widget.dart';
import 'package:booking/modules/home/presentation/widgets/custom_grid_view_category.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          14.h.ph,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            child: Row(
              children: [
                Expanded(
                  child: DropdownListWidget(
                    maxLength: 8,
                    currentValue: "Government",
                    listValues: ["Government"],
                  ),
                ),
                2.w.pw,
                Expanded(
                  child: DropdownListWidget(
                    maxLength: 8,
                    currentValue: "Region",
                    listValues: ["Region"],
                  ),
                ),
                2.w.pw,
                Expanded(
                  child: DropdownListWidget(
                    maxLength: 8,
                    currentValue: "Category",
                    listValues: ["Category"],
                  ),
                ),
              ],
            ),
          ),
          14.h.ph,
          CustomGridViewCategory(),
          20.h.ph,
        ],
      ),
    );
  }
}
