import 'package:flutter/material.dart';
import 'package:mental_health_app/core/helpers/alpha_from_percent.dart';
import 'package:mental_health_app/core/theming/app_colors.dart';
import 'package:mental_health_app/core/theming/app_styles.dart';

class FreeTier extends StatelessWidget {
  const FreeTier({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "30 days free. 287.90 RON / year. Cancel anytime.",
        style: AppStyles.sWithShadow.copyWith(
          color: AppColors.borderButton.withAlpha(alphaFromPercentage(6)),
        ),
      ),
    );
  }
}
