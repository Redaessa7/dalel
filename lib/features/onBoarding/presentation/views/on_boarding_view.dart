import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/widgets/custom_button.dart';
import 'package:dalel/features/onBoarding/presentation/widgets/custom_nav_bar.dart';
import 'package:dalel/features/onBoarding/presentation/widgets/on_boarding_body.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              const SizedBox(height: 40),
              const CustomNavBar(),
              OnBoardingBody(),
              const SizedBox(height: 88),
              CustomButton(onPressed: () {}, text: AppStrings.next),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
