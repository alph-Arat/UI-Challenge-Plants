import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../constants/app_colors.dart';

class OnBoardingScreenThree extends ConsumerWidget {
  const OnBoardingScreenThree({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Image.asset("assets/images/plant4.png", height: 350),
        const SizedBox(
          height: 110,
        ),
        const Text(
          "Let nature's beauty \nflourish in your space.",
          style: TextStyle(color: AppColors.textColor, fontSize: 30),
        )
      ],
    );
  }
}
