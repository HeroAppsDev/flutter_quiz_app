import 'package:flutter/material.dart';

import 'quiz_widget.dart';
import 'result_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  final questions = const [
    {
      'questionText': 'What\'s you favorite color?',
      'answers': [
        {'text': 'Blue', 'score': 10},
        {'text': 'Black', 'score': 6},
        {'text': 'Yellow', 'score': 2},
        {'text': 'Pink', 'score': 5}
      ]
    },
    {
      'questionText': 'What\'s your favorite food?',
      'answers': [
        {'text': 'Noodles', 'score': 2},
        {'text': 'Meat', 'score': 5},
        {'text': 'Vegetables', 'score': 6},
        {'text': 'Soup', 'score': 8}
      ]
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Cat', 'score': 10},
        {'text': 'Dog', 'score': 9},
        {'text': 'Elephant', 'score': 8},
        {'text': 'Rabbit', 'score': 9},
      ]
    },
    {
      'questionText': 'What\'s your favorite place?',
      'answers': [
        {'text': 'House', 'score': 5},
        {'text': 'Room', 'score': 6},
        {'text': 'Outdoor', 'score': 2},
        {'text': 'Stadium', 'score': 9}
      ]
    },
  ];

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex++;
    });

    if (_questionIndex < questions.length) {
      debugPrint('We have more questions');
    } else {
      debugPrint('No more questions!');
    }

    debugPrint('## $_questionIndex');
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Quiz App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Quiz App'),
        ),
        body: _questionIndex < questions.length
            ? QuizWidget(
                questions: questions,
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestion)
            : ResultWidget(
                totalScore: _totalScore,
                resetHandler: _resetQuiz,
              ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
