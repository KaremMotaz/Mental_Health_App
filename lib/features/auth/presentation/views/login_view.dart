import 'package:flutter/material.dart';
import 'package:mental_health_app/features/auth/presentation/widgets/login/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LoginViewBody());
  }
}
