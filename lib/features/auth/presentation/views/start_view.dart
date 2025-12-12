import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mental_health_app/features/auth/presentation/widgets/start/start_view_body.dart';

class StartView extends StatelessWidget {
  const StartView({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.light,
      ),
      child: Scaffold(body: StartViewBody()),
    );
  }
}
