import 'package:booking/core/app_assets/app_assets.dart';
import 'package:booking/core/utils/export_files.dart';
import 'package:booking/core/widgets/custom_image_widget.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ImageIconWidget(
      icon: Assets.logoSplashLogo,
      height: 106.h,
      width: 212.w,
    );
  }
}
