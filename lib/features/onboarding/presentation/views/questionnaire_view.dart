import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/routing/routes.dart';
import '../widgets/question_widget.dart';

class QuestionnaireView extends StatefulWidget {
  final Function(Map<int, String>) onFinish;

  const QuestionnaireView({super.key, required this.onFinish});

  @override
  State<QuestionnaireView> createState() => _QuestionnaireViewState();
}

class _QuestionnaireViewState extends State<QuestionnaireView> {
  final PageController _quizController = PageController();
  Map<int, String> answers = {};

  void nextQuestion() {
    if (_quizController.page!.toInt() < 2) {
      _quizController.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      context.go(Routes.homeView, extra: answers);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PageView(
            controller: _quizController,
            physics: NeverScrollableScrollPhysics(),
            children: [
              QuestionWidget(
                question: "ما هو لونك المفضل؟",
                options: ["أزرق", "أحمر", "أخضر"],
                onSelect: (val) {
                  answers[1] = val;
                  nextQuestion();
                },
              ),
              QuestionWidget(
                question: "ما هو نوع المحتوى الذي تحبه؟",
                options: ["فيديوهات", "مقالات", "تمارين"],
                onSelect: (val) {
                  answers[2] = val;
                  nextQuestion();
                },
              ),
              QuestionWidget(
                question: "كم عدد الساعات التي تقضيها يومياً في التعلم؟",
                options: ["1-2", "3-4", "5+"],
                onSelect: (val) {
                  answers[3] = val;
                  nextQuestion();
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
