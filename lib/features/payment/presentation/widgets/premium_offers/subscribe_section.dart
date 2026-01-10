import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mental_health_app/core/routing/routes.dart';
import 'package:mental_health_app/core/theming/app_styles.dart';
import 'package:mental_health_app/core/widgets/app_text_button.dart';
import 'package:mental_health_app/features/payment/presentation/widgets/premium_offers/choose_payment_type.dart';

class SubscribeSection extends StatelessWidget {
  const SubscribeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ChoosePaymentType(),
        const SizedBox(height: 20),
        SizedBox(
          width: double.infinity,
          child: AppTextButton(
            backgroundColor: Colors.white,
            withGradient: false,
            onPressed: () {
              context.pushReplacement(Routes.subscribeView);
            },
            child: const Text(
              "Subscribe",
              textAlign: TextAlign.center,
              style: AppStyles.pPlayful,
            ),
          ),
        ),
      ],
    );
  }
}
