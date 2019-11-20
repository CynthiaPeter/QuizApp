import 'package:flutter/material.dart';

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
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
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
          Text(
            questions[questionIndex],
          ),
          //This is a name function, because it has a name
          RaisedButton(
            child: Text('Answer 1'),
            onPressed: answerQuestion,
          ),
          //if you have a funt, you'll never call in an application again, you can add a funct, without a name, but add parenthesis to add parameters.
          RaisedButton(
            child: Text('Answer 2'),
            onPressed: () => print ('answer chosen'),
          ),
          //this option is d same unnaned funct, but will take in more commands.
          RaisedButton(
            child: Text('Answer 3'),
            onPressed: () {
              //some block of code
              //........
              print ('answer 3 chosen');
           },
          ), 
          

        ],
      ),
    ),
    );
  }
}