import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../constants/app_colors.dart';

class OnBoardingScreenTwo extends ConsumerWidget {
  const OnBoardingScreenTwo({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
  return Column(
      children: [
        Image.asset("assets/images/plant1.png",height: 350),
        const SizedBox(
          height: 110,
        ),
        RichText(
          text: const TextSpan(
            text: 'Discover the\n',
            style: TextStyle(color: AppColors.textColor, fontSize: 30),
            children: [
              TextSpan(
                text: 'green ',
                style: TextStyle(
                  color: AppColors.darkGreen,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: 'oasis that \nsoothes your soul.',
                style: TextStyle(
                  color: AppColors.textColor,
                  fontSize: 30,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}