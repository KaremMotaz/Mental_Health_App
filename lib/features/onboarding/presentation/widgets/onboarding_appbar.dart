import 'package:flutter/material.dart';
import 'package:mental_health_app/core/constants/constants.dart';
import 'package:mental_health_app/core/theming/app_colors.dart';
import 'package:mental_health_app/core/theming/app_styles.dart';
import 'package:mental_health_app/core/widgets/custom_back_button.dart';
import 'package:mental_health_app/features/onboarding/presentation/widgets/custom_dots_indicator.dart';

class OnboardingAppbar extends StatelessWidget {
  final int currentPageIndex;
  final int questionsLength;
  final void Function() previousPage;

  const OnboardingAppbar({
    super.key,
    required this.currentPageIndex,
    required this.questionsLength,
    required this.previousPage,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kAppHorizontalPadding),
      child: Row(
        mainAxisAlignment: currentPageIndex == 0
            ? MainAxisAlignment.center
            : MainAxisAlignment.spaceBetween,
        children: [
          if (currentPageIndex != 0) CustomBackButton(onTap: previousPage),
          CustomDotsIndicator(currentPageIndex: currentPageIndex),
          if (currentPageIndex != 0)
            Text(
              "${currentPageIndex + 1}/${questionsLength + 1}",
              style: AppStyles.p.copyWith(color: AppColors.bodyGray),
            ),
        ],
      ),
    );
  }
}
