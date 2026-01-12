import 'package:flutter/material.dart';
import '../../../../core/theming/app_styles.dart';

class DailyStatsSection extends StatelessWidget {
  const DailyStatsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("Daily Stats", style: AppStyles.h2),
        Container(),
      ],
    );
  }
}
