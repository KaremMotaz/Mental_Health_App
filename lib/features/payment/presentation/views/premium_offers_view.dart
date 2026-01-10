import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mental_health_app/core/constants/constants.dart';
import 'package:mental_health_app/features/payment/presentation/widgets/premium_offers/continue_with_free_tier_button.dart';
import 'package:mental_health_app/features/payment/presentation/widgets/premium_offers/free_tier.dart';
import 'package:mental_health_app/features/payment/presentation/widgets/premium_offers/premium_background.dart';
import 'package:mental_health_app/features/payment/presentation/widgets/premium_offers/premium_header.dart';
import 'package:mental_health_app/features/payment/presentation/widgets/premium_offers/premium_offers.dart';
import 'package:mental_health_app/features/payment/presentation/widgets/premium_offers/subscribe_section.dart';

class PremiumOffersView extends StatelessWidget {
  const PremiumOffersView({super.key});

  @override
  Widget build(BuildContext context) {
    return const AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.light,
      ),
      child: PremiumBackground(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: kAppHorizontalPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 70),
              PremiumHeader(withClose: false),
              Spacer(),
              PremiumOffers(),
              SizedBox(height: 20),
              SubscribeSection(),
              SizedBox(height: 20),
              ContinueWithFreeTierButton(),
              SizedBox(height: 20),
              FreeTier(),
              SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
