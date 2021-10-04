import 'package:flutter/material.dart';

import 'answer_button_widget.dart';
import 'question_label_widget.dart';

class QuizWidget extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function(int) answerQuestion;

  const QuizWidget(
      {Key? key,
      required this.questions,
      required this.questionIndex,
      required this.answerQuestion})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        QuestionLabelWidget(
            questions: questions[questionIndex]['questionText'].toString()),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) => AnswerButtonWidget(
                onPressed: () => answerQuestion(answer['score'] as int),
                answerText: answer['text'].toString()))
            .toList(),
      ],
    );
  }
}
