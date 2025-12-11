import 'package:flutter/material.dart';
import 'package:flutter_inner_shadow/flutter_inner_shadow.dart';
import 'package:mental_health_app/core/theming/app_colors.dart';
import '../theming/app_styles.dart';

class AppTextButton extends StatelessWidget {
  const AppTextButton({
    super.key,
    required this.onPressed,
    this.buttonText,
    this.child,
    this.shadowColor,
    this.withGradient = true,
  });
  final String? buttonText;
  final VoidCallback onPressed;
  final Widget? child;
  final Color? shadowColor;
  final bool? withGradient;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: shadowColor ?? AppColors.brandGreen,
            blurRadius: 0,
            offset: Offset(0, 0),
            spreadRadius: 2,
            blurStyle: BlurStyle.normal,
          ),
          BoxShadow(
            color:
                shadowColor ??
                Color(0xff0B1324).withAlpha((255 * 0.32).toInt()),
            blurRadius: 3,
            offset: Offset(0, 4),
            spreadRadius: 0,
            blurStyle: BlurStyle.normal,
          ),
        ],
      ),
      child: InnerShadow(
        shadows: [
          Shadow(
            color: Colors.white.withAlpha((255 * 0.6).toInt()),
            offset: const Offset(0, 2),
            blurRadius: 3,
          ),
        ],
        child: Material(
          color: Colors.transparent,
          child: Ink(
            decoration: BoxDecoration(
              color: Colors.white,
              gradient: withGradient == true
                  ? LinearGradient(
                      colors: [AppColors.lightGreen, AppColors.brandGreen],
                      stops: const [0.0, 0.75],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    )
                  : null,
              borderRadius: BorderRadius.circular(30),
            ),
            child: InkWell(
              borderRadius: BorderRadius.circular(30),
              onTap: onPressed,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 12,
                  horizontal: 24,
                ),
                child:
                    child ??
                    Text(
                      buttonText ?? 'Continue',
                      style: AppStyles.semiBold17.copyWith(color: Colors.white),
                    ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
