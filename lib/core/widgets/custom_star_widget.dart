import 'package:booking/core/utils/export_files.dart';

class CustomStarsWidget extends StatelessWidget {
  const CustomStarsWidget({super.key, required this.lightStar,this.starSize});
  final int lightStar;
  final double? starSize;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(5, (index) {
        return Icon(
          Icons.star_purple500_sharp,
          size:starSize?? 16.h,
          color: index < lightStar ? AppColors.primaryColor : AppColors.b75Color,
        );
      }),
    );
  }
}
