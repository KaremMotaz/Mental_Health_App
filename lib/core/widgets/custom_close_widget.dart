import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mental_health_app/core/extensions/svg_shadow_extension.dart';
import 'package:mental_health_app/core/helpers/alpha_from_percent.dart';
import 'package:mental_health_app/core/theming/app_assets.dart';

class CustomCloseWidget extends StatelessWidget {
  const CustomCloseWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.pop(),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: const Color(0xff07112E).withAlpha(alphaFromPercentage(12)),
        ),
        child: AppAssets.closeIcon.svgWithShadow(size: 24, color: Colors.white),
      ),
    );
  }
}
