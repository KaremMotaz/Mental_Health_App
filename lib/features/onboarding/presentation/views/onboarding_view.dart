import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mental_health_app/core/routing/routes.dart';
import 'package:mental_health_app/features/onboarding/data/models/question_model.dart';
import 'package:mental_health_app/features/onboarding/data/models/questionnaire_model.dart';
import 'package:mental_health_app/features/onboarding/presentation/widgets/question_widget.dart';
import 'welcome_view.dart';
import '../widgets/custom_dots_indicator.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final PageController _pageController = PageController();
  int currentPageIndex = 0;

  Map<String, List<String>> answers = {};
  final List<QuestionModel> questions = onboardingQuestionnaire.questions;

  void nextPage() {
    _pageController.nextPage(
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeInOut,
    );
  }

  void onSelectOption(String questionId, String optionId) {
    answers.putIfAbsent(questionId, () => []);

    if (answers[questionId]!.contains(optionId)) {
      answers[questionId]!.remove(optionId);
    } else {
      answers[questionId]!.add(optionId);
    }

    setState(() {});
  }

  void finishOnboarding() {
    context.go(Routes.homeView, extra: answers);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 60),
          CustomDotsIndicator(currentPageIndex: currentPageIndex),
          Expanded(
            child: PageView(
              controller: _pageController,
              physics: const NeverScrollableScrollPhysics(),
              onPageChanged: (index) {
                setState(() {
                  currentPageIndex = index;
                });
              },
              children: [
                ...questions.map((q) {
                  return QuestionWidget(
                    question: q.question,
                    options: q.options,
                    selectedValues: answers[q.id] ?? [],
                    onSelect: (optionTitle) {
                      final optionId = q.options
                          .firstWhere((o) => o.title == optionTitle)
                          .id;
                      onSelectOption(q.id, optionId);
                    },
                    onNext: nextPage,
                  );
                }),
                /// 0️⃣ Welcome
                WelcomeView(onNext: nextPage),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
