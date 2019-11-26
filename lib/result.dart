import 'package:flutter/material.dart';


class Result extends StatelessWidget {
  final int resultScore;
  Result (this.resultScore);

  String get resultPhrase{
   String resultText;
    if (resultScore <= 8) {
      resultText = 'You are awesome!';
    } else if (resultScore <= 12) {
      resultText = 'Pretty Likeable';
    } else if ( resultScore <= 16) {
      resultText = 'You are strange';
    } else {
      resultText = 'You are badass!';
    }
    return resultText;
  }
   
  @override
  Widget build(BuildContext context) {
    return Center(
                child: Text(
                  resultPhrase, 
                    style: TextStyle(
                     fontSize: 24,
                      fontWeight: FontWeight.w800,
                       ),),
              );
  }
}