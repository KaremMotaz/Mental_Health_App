import 'package:flutter/material.dart';
import '../../../../core/theming/app_styles.dart';

class MessageOfTheDaySection extends StatelessWidget {
  const MessageOfTheDaySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("Message of the Day", style: AppStyles.h2),
        Container(),
      ],
    );
  }
}
