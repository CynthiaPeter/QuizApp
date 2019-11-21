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
      'What\'s your Favorite color?',
      'What\'s your favourite movie?',
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
            questions[_questionIndex],
          ),
          Answer(_answerQuestion),
          Answer(_answerQuestion),
          Answer(_answerQuestion), 

        ],
      ),
    ),
    );
  }
}