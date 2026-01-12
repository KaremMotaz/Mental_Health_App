import 'package:flutter/material.dart';

import '../../../../core/theming/app_styles.dart';

class MoodProgressSection extends StatelessWidget {
  const MoodProgressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("Mood Progress", style: AppStyles.h2),
        Container(),
      ],
    );
  }
}
