import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback _selectHandler;
  final String _answer;

  Answer(this._selectHandler, this._answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.blue),
        ),
        onPressed: _selectHandler,
        child: Text(_answer),
      ),
    );
  }
}
