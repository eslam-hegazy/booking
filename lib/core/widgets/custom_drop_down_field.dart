import 'package:booking/core/utils/export_files.dart';
import 'package:booking/core/widgets/custom_title.dart';

class CustomDropDownField extends StatelessWidget {
  const CustomDropDownField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTitle(title: "Language"),
        6.h.ph,
        TextFormField(
          decoration: InputDecoration(
            suffixIcon: Icon(
              Icons.keyboard_arrow_down_rounded,
              color: AppColors.greyColor,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ],
    );
  }
}
