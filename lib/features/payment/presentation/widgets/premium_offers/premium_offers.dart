import 'package:flutter/material.dart';
import 'package:mental_health_app/core/extensions/svg_shadow_extension.dart';
import 'package:mental_health_app/core/helpers/alpha_from_percent.dart';
import 'package:mental_health_app/core/theming/app_styles.dart';
import 'package:mental_health_app/features/payment/data/models/premium_offer_model.dart';

class PremiumOffers extends StatelessWidget {
  const PremiumOffers({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: premiumOffers
          .map(
            (offer) => Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: Row(
                children: [
                  offer.icon.svgWithShadow(size: 24, color: Colors.white),
                  const SizedBox(width: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        offer.title,
                        style: AppStyles.pPlayfulWithShadow.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        offer.subtitle,
                        overflow: TextOverflow.ellipsis,
                        style: AppStyles.pWithShadow.copyWith(
                          color: Colors.white.withAlpha(
                            alphaFromPercentage(80),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
          .toList(),
    );
  }
}
