import 'package:booking/core/app_assets/app_assets.dart';
import 'package:booking/modules/onboarding/data/model/onboarding_item_model.dart';
import 'package:booking/modules/onboarding/presentation/widgets/onboarding_navigation_widget.dart';
import 'package:booking/modules/onboarding/presentation/widgets/onboarding_page_screen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final _controller = PageController();
  bool _isLastPage = false;

  final List<OnboardingItem> _pages = [
    OnboardingItem(
      animation: Assets.animationsOnBoardingAnimation2,
      title: tr('onboarding_title_1'),
      subtitle: tr('onboarding_subtitle_1'),
    ),
    OnboardingItem(
      animation: Assets.animationsOnBoardingAnimation3,
      title: tr('onboarding_title_2'),
      subtitle: tr('onboarding_subtitle_2'),
    ),
    OnboardingItem(
      animation: Assets.animationsOnBoardingAnimation1,
      title: tr('onboarding_title_3'),
      subtitle: tr('onboarding_subtitle_3'),
    ),
  ];

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        elevation: 0,
        leading: const BackButton(color: Colors.white),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 5,
              child: PageView.builder(
                controller: _controller,
                itemCount: _pages.length,
                onPageChanged: (index) {
                  setState(() {
                    _isLastPage = index == _pages.length - 1;
                  });
                },
                itemBuilder: (_, index) {
                  return OnboardingPage(item: _pages[index]);
                },
              ),
            ),
            Expanded(
              flex: 1,
              child: OnboardingNavigation(
                isLastPage: _isLastPage,
                controller: _controller,
                pageCount: _pages.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
