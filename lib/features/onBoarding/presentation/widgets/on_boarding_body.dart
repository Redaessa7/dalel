import 'package:dalel/core/utils/app_assets.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:dalel/core/widgets/custom_button.dart';
import 'package:dalel/features/onBoarding/presentation/widgets/custom_sooth_page_indicator.dart';
import 'package:flutter/material.dart';

class OnBoardingBody extends StatelessWidget {
  OnBoardingBody({super.key});

  final PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        controller: _controller,
        itemCount: 3,
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(Assets.imagesOnBoarding1),
              SizedBox(height: 24),
              CustomSoothPageIndicator(controller: _controller),
              SizedBox(height: 32),
              Text(
                "Explore The history with Dalel in a smart way",
                style: CustomTextStyles.Poppins500Style24.copyWith(
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16),
              Text(
                "Using our app’s history libraries you can find many historical periods ",
                style: CustomTextStyles.Poppins300Style16,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 88),
              CustomButton(onPressed: () {}, text: AppStrings.next),
            ],
          );
        },
      ),
    );
  }
}
