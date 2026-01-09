import 'package:flutter/material.dart';
import 'package:mental_health_app/core/constants/constants.dart';
import 'package:mental_health_app/core/extensions/svg_shadow_extension.dart';
import 'package:mental_health_app/core/theming/app_assets.dart';
import 'package:mental_health_app/core/theming/app_colors.dart';
import 'package:mental_health_app/core/theming/app_styles.dart';
import 'package:mental_health_app/core/widgets/custom_close_widget.dart';
import 'package:mental_health_app/features/payment/presentation/widgets/premium_offers.dart';

class PremiumOffersViewBody extends StatelessWidget {
  const PremiumOffersViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [AppColors.brandGreen, AppColors.lightGreen],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.25, 1.0],
          ),
        ),
        child: Stack(
          children: [
            Opacity(
              opacity: 0.6,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Image.asset(AppAssets.premiumShadow, fit: BoxFit.cover),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: kAppHorizontalPadding,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 70),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      AppAssets.zenspunLogo.svgWithShadow(
                        size: 55,
                        color: Colors.white,
                      ),
                      const SizedBox(width: 18),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Zenspun', style: AppStyles.h0),
                          Row(
                            children: [
                              Text(
                                'Premium',
                                style: AppStyles.h1WithShadow.copyWith(
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(width: 5),
                              AppAssets.premiumIcon.svgWithShadow(
                                size: 22,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Spacer(),
                      const CustomCloseWidget(),
                    ],
                  ),
                  const SizedBox(height: 100),
                  const PremiumOffers(),
                  const SizedBox(height: 20),

                  const SizedBox(height: 20),
                  const Center(
                    child: Text(
                      "30 days free. 287.90 RON / year. Cancel anytime.",
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
