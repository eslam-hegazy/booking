import 'package:booking/core/utils/export_files.dart';

class CustomStarsWidget extends StatelessWidget {
  const CustomStarsWidget({super.key, required this.lightStar});
  final int lightStar;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(5, (index) {
        return Icon(
          Icons.star_purple500_sharp,
          size: 16.h,
          color: index < lightStar ? AppColors.primaryColor : null,
        );
      }),
    );
  }
}
