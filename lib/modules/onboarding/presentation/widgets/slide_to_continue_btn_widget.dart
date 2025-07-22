import 'package:booking/core/app_router/app_router.dart';
import 'package:booking/core/utils/export_files.dart';
import 'package:booking/modules/onboarding/presentation/screens/onboarding_layout_screen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:slide_to_act/slide_to_act.dart';
import 'dart:math' as math;

class SlideToContinueButton extends StatelessWidget {
  const SlideToContinueButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SlideAction(
      onSubmit: () {
        return AppRouter.to(() => const OnboardingScreen());
      },
      text: LocaleKeys.prompt_slide_to_continue.tr(),
      textStyle: AppStyles.mediumStyle(
        fontSize: 16,
        color: AppColors.b300Color,
      ),
      outerColor: AppColors.whiteColor,
      innerColor: AppColors.primaryColor,

      sliderButtonIcon: Transform.rotate(
        angle: context.locale.languageCode == 'ar' ? math.pi : 0,
        child: const Icon(Icons.arrow_forward_ios, color: Colors.white),
      ),
      elevation: 2,
      borderRadius: 50.r,
      sliderRotate: true,
    );
  }
}
