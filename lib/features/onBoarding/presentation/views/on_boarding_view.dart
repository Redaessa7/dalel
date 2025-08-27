import 'package:dalel/core/functions/navigation.dart';
import 'package:dalel/features/onBoarding/presentation/functions/on_boarding.dart';
import 'package:dalel/features/onBoarding/presentation/widgets/custom_nav_bar.dart';
import 'package:dalel/features/onBoarding/presentation/widgets/get_buttons.dart';
import 'package:dalel/features/onBoarding/presentation/widgets/on_boarding_body.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  final PageController controller = PageController(initialPage: 0);
  int? currentIndex;

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
              CustomNavBar(
                onTap: () {
                  onBoardingVisited();
                  goNavigatePushReplacement(context, "/signin");
                },
              ),
              OnBoardingBody(
                controller: controller,
                onPageChanged: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
              ),
              const SizedBox(height: 88),
              GetButtons(currentIndex: currentIndex, controller: controller),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
