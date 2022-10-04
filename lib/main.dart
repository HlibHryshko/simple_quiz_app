import 'dart:ffi';

import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  void _answerChosen(int score) {
    print("The answer was chosen");
    setState(() {
      _questionIndex ++;
      _score += score;
    });
  }

  void _restartQuiz() {
    setState(() {
      _questionIndex = 0;
      _score = 0;
    });
  }

  var _questionIndex = 0;
  var _score = 0;
  final _questions = const [
    {
      'questionText' : 'What\'s your favorite color?',
      'answers' : [
        {'text':'Black', 'score': 10},
        {'text':'Red', 'score': 6},
        {'text':'Green', 'score': 3},
        {'text':'White', 'score': 1}
      ],
    },
    {
      'questionText' : 'What\'s your favorite animal',
      'answers' : [
        {'text':'Rabbit', 'score': 3},
        {'text':'Snake', 'score': 11},
        {'text':'Cat', 'score': 5},
        {'text':'Lion', 'score': 9}
      ],
    },
    {
      'questionText' : 'Who\'s your favorite instructor',
      'answers' : [
        {'text':'Max', 'score': 1},
        {'text':'Max', 'score': 1},
        {'text':'Max', 'score': 1},
        {'text':'Max', 'score': 1}
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
        ),
        body: (_questionIndex < _questions.length) ?
          Quiz(
              _questions,
              _questionIndex,
              _answerChosen,
          )
            :
          Result(
            _score,
            _restartQuiz,
          ),
      ),
    );
  }
}
