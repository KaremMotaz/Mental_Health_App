import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:mental_health_app/core/routing/routes.dart';
import 'package:mental_health_app/core/theming/app_assets.dart';
import 'package:mental_health_app/core/theming/app_styles.dart';
import 'package:mental_health_app/core/widgets/app_text_button.dart';

class LoginWithEmailButton extends StatelessWidget {
  const LoginWithEmailButton({super.key});

  @override
  Widget build(BuildContext context) {
    return AppTextButton(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(AppAssets.emailIcon, width: 27),
          const SizedBox(width: 10),
          Text(
            'Log in with email',
            style: AppStyles.semiBold17.copyWith(
              color: Colors.white,
              shadows: [
                Shadow(
                  color: Color(0xff0B1324).withAlpha((255 * 0.24).toInt()),
                  offset: Offset(0, 2),
                  blurRadius: 4,
                ),
              ],
            ),
          ),
        ],
      ),
      onPressed: () {
        context.push(Routes.loginView);
      },
    );
  }
}
