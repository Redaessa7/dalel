import 'package:dalel/core/functions/navigation.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:dalel/core/widgets/custom_button.dart';
import 'package:dalel/features/onBoarding/data/models/on_boarding_model.dart';
import 'package:dalel/features/onBoarding/presentation/functions/on_boarding.dart';
import 'package:flutter/material.dart';

class GetButtons extends StatelessWidget {
  const GetButtons({
    super.key,
    required this.currentIndex,
    required this.controller,
  });
  final int? currentIndex;
  final PageController controller;
  @override
  Widget build(BuildContext context) {
    Widget button = currentIndex == onBoardingData.length - 1
        ? Column(
            children: [
              CustomButton(
                onPressed: () {
                  onBoardingVisited();
                  goNavigatePushReplacement(context, "/signup");
                },
                text: AppStrings.createAccount,
              ),
              SizedBox(height: 16),
              GestureDetector(
                onTap: () {
                  goNavigatePushReplacement(context, "/signin");
                },
                child: Text(
                  AppStrings.loginNow,
                  style: CustomTextStyles.Poppins300Style16.copyWith(
                    fontWeight: FontWeight.w400,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          )
        : CustomButton(
            onPressed: () {
              controller.nextPage(
                duration: Duration(microseconds: 200),
                curve: Curves.bounceIn,
              );
            },
            text: AppStrings.next,
          );
    return button;
  }
}
