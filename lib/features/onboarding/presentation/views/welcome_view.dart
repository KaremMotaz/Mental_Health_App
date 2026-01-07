import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/theming/app_assets.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/widgets/app_text_button.dart';

class WelcomeView extends StatelessWidget {
  final VoidCallback onNext;
  const WelcomeView({super.key, required this.onNext});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Image.asset(AppAssets.welcomeBackground),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            children: [
              SizedBox(height: 25),
              Text("Welcome to Zenspun!", style: AppStyles.h1),
              SizedBox(height: 5),
              Text(
                "Let's set up your personal space. Find a quiet moment — a few quick questions will help personalize your experience.",
                style: AppStyles.p.copyWith(color: AppColors.bodyGray),
                textAlign: TextAlign.center,
              ),
              Spacer(),
              AppTextButton(
                onPressed: () {},
                withGradient: false,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Continue", style: AppStyles.pPlayful),
                      SizedBox(width: 8),
                      SvgPicture.asset(AppAssets.arrowRightIcon, width: 20),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 40),
            ],
          ),
        ),
      ],
    );
  }
}
