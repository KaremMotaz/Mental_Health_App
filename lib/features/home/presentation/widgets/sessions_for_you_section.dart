import 'package:flutter/material.dart';
import '../../../../core/theming/app_styles.dart';

class SessionsForYouSection extends StatelessWidget {
  const SessionsForYouSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(children: [Text("Sessions for you", style: AppStyles.h2)]),
        Container(),
      ],
    );
  }
}
