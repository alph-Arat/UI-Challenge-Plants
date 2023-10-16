import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:ui_challenge_plants/constants/app_colors.dart';
import 'package:ui_challenge_plants/onboarding_screens/onboarding_screen1.dart';
import 'package:ui_challenge_plants/onboarding_screens/onboarding_screen2.dart';
import 'package:ui_challenge_plants/onboarding_screens/onboarding_screen3.dart';
import 'package:ui_challenge_plants/provider/boarding_screen_provider.dart';

class OnBoardingScreen extends ConsumerStatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _OnBoardingScreenState();
}

class _OnBoardingScreenState extends ConsumerState<OnBoardingScreen> {
  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    bool isLastPage = ref.watch(boardinScreenProvider);
    return Scaffold(
      backgroundColor: AppColors.backgroundWhite,
      body: SafeArea(
        child: Stack(
          children: [
            PageView(
              controller: _controller,
              onPageChanged: (index) {
                if (index == 2) {
                  ref.read(boardinScreenProvider.notifier).changeStatus(true);
                } else {
                  ref.read(boardinScreenProvider.notifier).changeStatus(false);
                }
              },
              children: const [
                OnBoardingScreenOne(),
                OnBoardingScreenTwo(),
                OnBoardingScreenThree()
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 80),
              child: Align(
                alignment: Alignment.center,
                child: SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                   effect:  const ExpandingDotsEffect(  
      spacing:  8.0,  
      dotWidth:  8.0,  
      dotHeight:  8.0,  
      strokeWidth:  1.5,  
      dotColor:  Colors.grey,  
      activeDotColor:  AppColors.green
   ),  
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: InkWell(
                onTap: () {
                  _controller.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeIn);
                },
                child: Container(
                  height: 55,
                  width: 55,
                  margin: const EdgeInsets.only(bottom: 40),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.green,
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.arrow_forward_outlined,
                      color: AppColors.white,
                      size: 30,
                    ),
                  ),
                ),
              ),
            ),
            isLastPage
                ? const SizedBox()
                : Align(
                    alignment: Alignment.topRight,
                    child: TextButton(
                      onPressed: () {
                        _controller.jumpToPage(2);
                      },
                      child: const Text(
                        "Skip",
                        style: TextStyle(color: AppColors.textColor),
                      ),
                    ),
                  )
          ],
        ),
      ),
    );
  }
}
