import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

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
  final _questions = const [
    {
      'questionText': 'What\'s your Favorite movie?',
      'answers': [
        {'text': 'Silicon Valley', 'score': 1},
        {'text': 'Suits', 'score': 2},
        {'text': 'Big Bang Theory', 'score':3},
        {'text': 'Snow white', 'score': 4}
        ],
    },
    {
      'questionText': 'What\'s your Second Language?',
      'answers': [
        {'text':'Igbo', 'score':8},
        {'text': 'Hausa', 'score':6},
        {'text': 'Yoruba', 'score':7},
        {'text': 'English', 'score':10},
        ],
    },
    {
      'questionText': 'Who\'s your Favorite Artist?',
      'answers': [
        {'text':'6lack', 'score': 3},
        {'text': 'J.Cole', 'score': 7},
        {'text': 'John Legend', 'score':10},
        {'text': 'Adele', 'score':5},
        ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('done');
    } else {
      print('No more questions');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      home: Scaffold(
        appBar: AppBar(
          title: Text("QuizApp"),
          centerTitle: true,
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
              answerQuestion: _answerQuestion, 
              questionIndex: _questionIndex,
              questions: _questions,
            )
            : Result(_totalScore)
      ),
    );
  }
}
