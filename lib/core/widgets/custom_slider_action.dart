import 'package:action_slider/action_slider.dart';
import 'package:booking/core/theme/app_colors.dart';
import 'package:booking/core/theme/app_fonts.dart';
import 'package:booking/core/utils/export_files.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSlideAction extends StatelessWidget {
  final Function(ActionSliderController) action;
  const CustomSlideAction({super.key, required this.action});

  @override
  Widget build(BuildContext context) {
    return ActionSlider.standard(
      height: 55.h,
      backgroundColor: AppColors.greyColor,
      toggleColor: AppColors.primaryColor,
      rolling: true,
      icon: Icon(
        Icons.keyboard_arrow_right_rounded,
        color: AppColors.whiteColor,
      ),

      action: (controller) {
        action(controller);
      },
      child: Text('Slide to confirm', style: AppFonts.regularStyle()),
    );
  }
}
