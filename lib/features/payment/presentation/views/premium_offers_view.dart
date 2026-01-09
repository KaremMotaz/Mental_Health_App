import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mental_health_app/features/payment/presentation/widgets/premium_offers_view_body.dart';

class PremiumOffersView extends StatelessWidget {
  const PremiumOffersView({super.key});

  @override
  Widget build(BuildContext context) {
    return const AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.light,
      ),
      child: PremiumOffersViewBody(),
    );
  }
}
