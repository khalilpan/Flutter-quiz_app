import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {

  final onAnswerBtnPressed;
  final String answerText;

  AnswerButton(this.onAnswerBtnPressed, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue[400],
        textColor: Colors.white,
        onPressed: onAnswerBtnPressed,
        child: Text(
          answerText,
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
