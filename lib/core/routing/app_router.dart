import 'package:go_router/go_router.dart';
import 'package:mental_health_app/features/app/privacy_policy_view.dart';
import 'package:mental_health_app/features/app/terms_and_conditions_view.dart';
import 'package:mental_health_app/features/auth/presentation/views/forgot_password_view.dart';
import 'package:mental_health_app/features/auth/presentation/views/login_view.dart';
import 'package:mental_health_app/features/auth/presentation/views/register_view.dart';
import 'package:mental_health_app/features/auth/presentation/views/start_view.dart';
import 'package:mental_health_app/features/home/presentation/views/home_view.dart';
import 'package:mental_health_app/features/onboarding/presentation/views/onboarding_view.dart';
import 'routes.dart';

abstract class AppRouter {
  static GoRouter createRouter() {
    return GoRouter(
      initialLocation: Routes.onboardingView,
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
        GoRoute(
          path: Routes.termsAndConditionsView,
          builder: (context, state) => const TermsAndConditionsView(),
        ),
        GoRoute(
          path: Routes.privacyPolicyView,
          builder: (context, state) => const PrivacyPolicyView(),
        ),
        GoRoute(
          path: Routes.forgotPasswordView,
          builder: (context, state) => const ForgotPasswordView(),
        ),
        GoRoute(
          path: Routes.homeView,
          builder: (context, state) => const HomeView(),
        ),
      ],
    );
  }
}
