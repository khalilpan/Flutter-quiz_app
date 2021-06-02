import 'package:flutter/material.dart';
import './question.dart';
import './answerButton.dart';

class Quiz extends StatelessWidget {
  final onAnswerBtnPressed;
  final List<Map<String, Object>> questions;
  final int questionIndex;

  Quiz(
      {@required this.onAnswerBtnPressed,
      required this.questions,
      required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText'].toString(),
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((item) {
          return AnswerButton(() => onAnswerBtnPressed(item['score']), item['text'].toString());
        }).toList()
      ],
    );
  }
}
