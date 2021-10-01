import 'package:flutter/material.dart';

class AnswerButtonWidget extends StatelessWidget {
  final VoidCallback onPressed; //void Function for Callback
  const AnswerButtonWidget({Key? key, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        child: const Text('Answer 1'),
      ),
    );
  }
}
