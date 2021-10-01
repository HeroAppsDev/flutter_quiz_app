import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  void answerQuestion() {
    debugPrint('Answer chosen!');
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
            Text(questions[0]),
            ElevatedButton(
              onPressed: answerQuestion,
              child: const Text('Answer 1'),
            ),
            const ElevatedButton(
              onPressed: null,
              child: Text('Answer 2'),
            ),
            const ElevatedButton(
              onPressed: null,
              child: Text('Answer 3'),
            ),
          ],
        ),
      ),
    );
  }
}
