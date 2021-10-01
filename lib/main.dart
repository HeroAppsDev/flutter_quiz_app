import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/answer_button_widget.dart';
import 'package:flutter_quiz_app/question_label_widget.dart';

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

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
    debugPrint('$_questionIndex');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s you favorite color?',
      'What\'s your favorite food?',
    ];
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
        ),
        body: Column(
          children: [
            QuestionLabelWidget(questions: questions.elementAt(_questionIndex)),
            AnswerButtonWidget(
              onPressed: _answerQuestion,
            ),
            AnswerButtonWidget(
              onPressed: _answerQuestion,
            ),
            AnswerButtonWidget(
              onPressed: _answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
