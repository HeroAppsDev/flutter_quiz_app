import 'package:flutter/material.dart';

class AnswerButtonWidget extends StatelessWidget {
  final VoidCallback onPressed; //void Function for Callback
  final String answerText;
  const AnswerButtonWidget(
      {Key? key, required this.onPressed, required this.answerText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(answerText),
      ),
    );
  }
}
