import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ui_challenge_plants/constants/app_colors.dart';

class OnBoardingScreenOne extends ConsumerWidget {
  const OnBoardingScreenOne({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Image.asset("assets/images/plant3.png"),
        const SizedBox(
          height: 70,
        ),
        RichText(
          text: const TextSpan(
            text: 'Enjoy your \nlife with',
            style: TextStyle(color: AppColors.textColor, fontSize: 40),
            children: [
              TextSpan(
                text: ' plants',
                style: TextStyle(
                  color: AppColors.textColor,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
