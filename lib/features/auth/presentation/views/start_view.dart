import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mental_health_app/core/theming/app_assets.dart';
import 'package:mental_health_app/core/theming/app_colors.dart';
import 'package:mental_health_app/core/theming/app_styles.dart';
import 'package:mental_health_app/core/widgets/app_text_button.dart';

class StartView extends StatelessWidget {
  const StartView({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.light,
      ),
      child: Scaffold(
        body: SizedBox(
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
                      style: AppStyles.extraBold26,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Guided meditations, mood tracking, and\ncommunity support — all in one app.',
                      style: AppStyles.medium15.copyWith(
                        color: AppColors.bodyGray,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20),
                    AppTextButton(
                      onPressed: () {},
                      buttonWidth: double.infinity,
                      borderRadius: 30,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(AppAssets.emailIcon),
                          Text(
                            'Log in with email',
                            style: AppStyles.semiBold15.copyWith(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
