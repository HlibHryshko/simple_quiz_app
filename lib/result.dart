import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int _score;
  final VoidCallback _restartQuiz;
  Result(this._score, this._restartQuiz);

  String get resultPhrase {
    String resultText;
    if (_score <= 8) {
      resultText = 'You are awesome and innocent!';
    } else if (_score <= 12){
      resultText = 'Pretty likeable!';
    } else if (_score <= 16) {
      resultText = 'You are ... strange?!';
    } else {
      resultText = 'You are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextButton(
            child: Text('Restart Quiz'),
            onPressed: _restartQuiz,
          ),
        ],
      ),
    );
  }
}
