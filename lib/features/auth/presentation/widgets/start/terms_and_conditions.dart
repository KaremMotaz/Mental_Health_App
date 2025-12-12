import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mental_health_app/core/routing/routes.dart';
import 'package:mental_health_app/core/theming/app_colors.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      textAlign: TextAlign.center,
      TextSpan(
        text: "By continuing, you agree to Zenspun's ",
        style: TextStyle(color: AppColors.bodyGray, fontSize: 14),
        children: [
          TextSpan(
            text: "Terms & Conditions",
            style: TextStyle(
              fontSize: 14,
              color: Color(0xff707480),
              decoration: TextDecoration.underline,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.push(Routes.termsAndConditionsView);
              },
          ),
          TextSpan(text: " and "),
          TextSpan(
            text: "Privacy Policy",
            style: TextStyle(
              color: Color(0xff707480),
              decoration: TextDecoration.underline,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.push(Routes.privacyPolicyView);
              },
          ),
          TextSpan(text: "."),
        ],
      ),
    );
  }
}
