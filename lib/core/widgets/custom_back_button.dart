import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:mental_health_app/core/helpers/alpha_from_percent.dart';
import 'package:mental_health_app/core/theming/app_assets.dart';
import 'package:mental_health_app/core/theming/app_colors.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key, this.onTap});
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (onTap != null) {
          onTap!();
        } else {
          context.pop();
        }
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          border: Border.all(
            color: AppColors.borderButton.withAlpha(alphaFromPercentage(6)),
            width: 1.5,
          ),
          boxShadow: [
            BoxShadow(
              color: AppColors.shadow.withAlpha(alphaFromPercentage(10)),
              offset: const Offset(0, 1),
              blurRadius: 1,
              spreadRadius: -3,
            ),
            BoxShadow(
              color: AppColors.shadow.withAlpha(alphaFromPercentage(12)),
              offset: const Offset(0, 4),
              blurRadius: 4,
              spreadRadius: -3,
            ),
          ],
        ),
        child: SvgPicture.asset(AppAssets.arrowLeftIcon, width: 24),
      ),
    );
  }
}
