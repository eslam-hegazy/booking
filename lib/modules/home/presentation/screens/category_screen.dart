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
          Row(
            children: [
              Expanded(
                child: DropdownListWidget(
                  currentValue: "Government",
                  listValues: ["Government"],
                ),
              ),
              4.w.pw,
              Expanded(
                child: DropdownListWidget(
                  currentValue: "Region",
                  listValues: ["Region"],
                ),
              ),
              4.w.pw,
              Expanded(
                child: DropdownListWidget(
                  currentValue: "Category",
                  listValues: ["Category"],
                ),
              ),
            ],
          ),
          14.h.ph,
          CustomGridViewCategory(),
          20.h.ph,
        ],
      ),
    );
  }
}
