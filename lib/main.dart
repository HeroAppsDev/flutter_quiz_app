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
    debugPrint('## $_questionIndex');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What\'s you favorite color?',
        'answers': ['Blue', 'Black', 'Yellow', 'Red']
      },
      {
        'questionText': 'What\'s your favorite food?',
        'answers': ['Noodles', 'Soup', 'Meat', 'Vegetables']
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': ['Cat', 'Dog', 'Rabbit', 'Panda']
      },
      {
        'questionText': 'What\'s your favorite place?',
        'answers': ['Home', 'Outside', 'Club', 'Stadium']
      },
    ];
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
        ),
        body: Column(
          children: [
            QuestionLabelWidget(
                questions:
                    questions[_questionIndex]['questionText'].toString()),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((e) => AnswerButtonWidget(
                    onPressed: _answerQuestion, answerText: e))
                .toList(),
          ],
        ),
      ),
    );
  }
}
