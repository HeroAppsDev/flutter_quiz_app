import 'package:flutter/material.dart';

class QuestionLabelWidget extends StatelessWidget {
  const QuestionLabelWidget({
    Key? key,
    required this.questions,
  }) : super(key: key);

  final String questions;

  @override
  Widget build(BuildContext context) {
    return Text(questions);
  }
}
