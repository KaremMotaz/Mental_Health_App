import 'package:flutter/material.dart';
import 'package:mental_health_app/core/extensions/svg_shadow_extension.dart';
import 'package:mental_health_app/core/theming/app_assets.dart';
import 'package:mental_health_app/core/theming/app_styles.dart';

class PremiumAppName extends StatelessWidget {
  const PremiumAppName({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Zenspun', style: AppStyles.h0WithShadow),
        Row(
          children: [
            Text(
              'Premium',
              style: AppStyles.h1WithShadow.copyWith(color: Colors.white),
            ),
            const SizedBox(width: 5),
            AppAssets.premiumIcon.svgWithShadow(size: 22, color: Colors.white),
          ],
        ),
      ],
    );
  }
}
