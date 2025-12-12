import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mental_health_app/core/theming/app_assets.dart';
import 'package:mental_health_app/features/auth/presentation/widgets/login/login_form_widget.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 169),
                SvgPicture.asset(AppAssets.authIcon, width: 246, height: 235),
                SizedBox(height: 205),
                LoginFormWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
