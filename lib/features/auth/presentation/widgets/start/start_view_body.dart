import 'package:flutter/material.dart';
import 'package:mental_health_app/core/theming/app_assets.dart';
import 'package:mental_health_app/core/theming/app_colors.dart';
import 'package:mental_health_app/core/theming/app_styles.dart';
import 'package:mental_health_app/features/auth/presentation/widgets/start/login_with_email_button.dart';
import 'package:mental_health_app/features/auth/presentation/widgets/start/login_with_facebook_button.dart';
import 'package:mental_health_app/features/auth/presentation/widgets/start/login_with_google_button.dart';
import 'package:mental_health_app/features/auth/presentation/widgets/start/or_divider.dart';
import 'package:mental_health_app/features/auth/presentation/widgets/start/terms_and_conditions.dart';

class StartViewBody extends StatelessWidget {
  const StartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(AppAssets.start),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                children: [
                  Text(
                    'Your safe space for\nmind and soul.',
                    style: AppStyles.h1,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Guided meditations, mood tracking, and\ncommunity support — all in one app.',
                    style: AppStyles.p.copyWith(color: AppColors.bodyGray),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  LoginWithEmailButton(),
                  const SizedBox(height: 20),
                  OrDivider(),
                  const SizedBox(height: 20),
                  LoginWithFacebookButton(),
                  const SizedBox(height: 20),
                  LoginWithGoogleButton(),
                  const SizedBox(height: 30),
                  TermsAndConditions(),
                  const SizedBox(height: 50),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
