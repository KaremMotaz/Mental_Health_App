import 'package:go_router/go_router.dart';
import 'package:mental_health_app/features/auth/presentation/views/login_view.dart';
import 'package:mental_health_app/features/auth/presentation/views/register_view.dart';
import 'package:mental_health_app/features/auth/presentation/views/start_view.dart';
import 'package:mental_health_app/features/onboarding/onboarding_view.dart';
import 'routes.dart';

abstract class AppRouter {
  static GoRouter createRouter() {
    return GoRouter(
      routes: [
        GoRoute(
          path: Routes.startView,
          builder: (context, state) => const StartView(),
        ),
        GoRoute(
          path: Routes.loginView,
          builder: (context, state) => const LoginView(),
        ),
        GoRoute(
          path: Routes.registerView,
          builder: (context, state) => const RegisterView(),
        ),
        GoRoute(
          path: Routes.onboardingView,
          builder: (context, state) => const OnboardingView(),
        ),
      ],
    );
  }
}
