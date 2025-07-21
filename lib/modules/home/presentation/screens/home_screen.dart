import 'package:booking/core/utils/export_files.dart';
import 'package:booking/core/widgets/custom_image_widget.dart';
import 'package:booking/core/widgets/custom_title.dart';
import 'package:booking/modules/home/presentation/widgets/custom_category_widget.dart';
import 'package:booking/modules/home/presentation/widgets/custom_top_home_widget.dart';
import 'package:easy_localization/easy_localization.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final ScrollController _scrollController = ScrollController();
  void _scrollToTop() {
    _scrollController.animateTo(
      0,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          controller: _scrollController,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ImageIconWidget(icon: Assets.logoSplashLogo, height: 60.h),
              CustomTopHomeWidget(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
                child: CustomTitle(title: LocaleKeys.title_categories.tr()),
              ),
              CustomCategoryWidget(),
              Align(
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: _scrollToTop,
                  child: CircleAvatar(
                    radius: 20.h,
                    backgroundColor: AppColors.primaryColor,
                    child: Icon(
                      Icons.keyboard_arrow_up_rounded,
                      color: AppColors.whiteColor,
                    ),
                  ),
                ),
              ),
              10.h.ph,
            ],
          ),
        ),
      ),
    );
  }
}
