import 'package:flutter/material.dart';
import 'package:mental_health_app/core/extensions/svg_shadow_extension.dart';
import 'package:mental_health_app/core/theming/app_assets.dart';
import 'package:mental_health_app/core/widgets/custom_close_widget.dart';
import 'package:mental_health_app/features/payment/presentation/widgets/premium_offers/premium_app_name.dart';

class PremiumHeader extends StatelessWidget {
  final bool withClose;
  const PremiumHeader({super.key, required this.withClose});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        AppAssets.zenspunLogo.svgWithShadow(size: 55, color: Colors.white),
        const SizedBox(width: 18),
        const PremiumAppName(),
        const Spacer(),
        if (withClose)
        const CustomCloseWidget(),
      ],
    );
  }
}
