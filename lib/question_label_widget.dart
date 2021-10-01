import 'package:flutter/material.dart';

class QuestionLabelWidget extends StatelessWidget {
  const QuestionLabelWidget({
    Key? key,
    required this.questions,
  }) : super(key: key);

  final String questions;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: Text(
        questions,
        style: const TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
