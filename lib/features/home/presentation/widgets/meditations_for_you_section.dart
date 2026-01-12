import 'package:flutter/material.dart';
import '../../../../core/theming/app_styles.dart';

class MeditationsForYouSection extends StatelessWidget {
  const MeditationsForYouSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(children: [Text("Meditations for You", style: AppStyles.h2)]),
        Container(),
      ],
    );
  }
}
