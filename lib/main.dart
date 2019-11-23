import 'package:flutter/material.dart';

import './questions.dart';
import './answers.dart';

void main() {
  runApp(QuizApp());
}

class QuizApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _QuizAppState();
  }
}

class _QuizAppState extends State<QuizApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What\'s your Favorite color?',
        'answers': ['Black', 'Red', 'Purple', 'White'],
      },
      {
        'questionText': 'What\'s your Favorite food?',
        'answers': ['Jollof', 'Fried Rice', 'Banga Rice', 'Coconut Rice'],
      },
      {
        'questionText': 'What\'s your Favorite pet?',
        'answers': ['Puppy', 'Snake', 'Cat', 'Rabbit'],
      },
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("QuizApp"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex]['questionText'],
            ),
           ...(questions[_questionIndex]['answers'] as List<String>).map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
