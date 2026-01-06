import 'package:flutter/material.dart';
import 'package:mental_health_app/features/home/presentation/views/home_view.dart';
import 'package:mental_health_app/features/onboarding/presentation/views/questionnaire_view.dart';
import 'package:mental_health_app/features/onboarding/presentation/views/welcome_view.dart';
import 'package:mental_health_app/features/onboarding/presentation/widgets/custom_dots_indicator.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  _OnboardingViewState createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final PageController _pageController = PageController();
  int currentPageIndex = 0;

  Map<int, String> quizAnswers = {};

  void nextPage() {
    _pageController.nextPage(
      duration: Duration(milliseconds: 400),
      curve: Curves.easeInOut,
    );
  }

  void finishQuiz(Map<int, String> answers) {
    setState(() {
      quizAnswers = answers;
    });

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => HomeView()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 60),
          CustomDotsIndicator(currentPageIndex: currentPageIndex),
          Expanded(
            child: PageView(
              controller: _pageController,
              physics: NeverScrollableScrollPhysics(),
              onPageChanged: (index) {
                setState(() {
                  currentPageIndex = index;
                });
              },
              children: [
                WelcomeView(onNext: nextPage),
                QuestionnaireView(onFinish: finishQuiz),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
