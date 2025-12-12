import 'package:flutter/material.dart';
import 'package:mental_health_app/core/theming/app_colors.dart';
import 'package:mental_health_app/core/theming/app_styles.dart';
import 'package:mental_health_app/core/widgets/custom_divider.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomDivider(),
        const SizedBox(width: 5),
        Text(
          'or',
          style: AppStyles.medium15.copyWith(color: AppColors.bodyGray),
        ),
        const SizedBox(width: 5),
        CustomDivider(),
      ],
    );
  }
}
