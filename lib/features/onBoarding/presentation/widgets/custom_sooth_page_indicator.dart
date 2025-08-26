import 'package:dalel/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomSoothPageIndicator extends StatelessWidget {
  const CustomSoothPageIndicator({super.key, required this.controller});
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: controller,
      count: 3,
      effect: ExpandingDotsEffect(
        activeDotColor: AppColors.secondary,
        dotColor: AppColors.grey,
        dotHeight: 8,
        dotWidth: 10,
      ),
    );
  }
}
