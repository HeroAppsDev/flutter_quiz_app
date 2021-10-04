import 'package:flutter/material.dart';

class ResultWidget extends StatelessWidget {
  final int totalScore;
  final VoidCallback resetHandler;
  const ResultWidget({
    Key? key,
    required this.totalScore,
    required this.resetHandler,
  }) : super(key: key);

  String get resultPhrase {
    String resultText;
    if (totalScore <= 10) {
      resultText = 'You are awesome';
    } else if (totalScore <= 20) {
      resultText = 'Pretty likeable!';
    } else if (totalScore <= 30) {
      resultText = 'You are ... strange?!';
    } else {
      resultText = 'You are so bad!';
    }

    return 'Your score: $totalScore\n' + resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            resultPhrase,
            style: const TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          TextButton(onPressed: resetHandler, child: const Text('Reset Quiz'))
        ],
      ),
    );
  }
}
