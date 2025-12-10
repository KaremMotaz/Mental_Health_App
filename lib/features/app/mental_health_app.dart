import 'package:flutter/material.dart';
import 'package:mental_health_app/core/routing/app_router.dart';
import 'package:mental_health_app/core/theming/theme_manager.dart';

class MentalHealthApp extends StatelessWidget {
  const MentalHealthApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeManager.getAppTheme(),
      routerConfig: AppRouter.createRouter(),
    );
  }
}
