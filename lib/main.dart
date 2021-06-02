import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main(List<String> args) {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  var _questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Yellow', 'score': 5},
        {'text': 'Blue', 'score': 7},
        {'text': 'Red', 'score': 2},
        {'text': 'White', 'score': 0}
      ],
    },
    {
      'questionText': 'What\'s your favorite Animal?',
      'answers': [
        {'text': 'Dog', 'score': 10},
        {'text': 'cat', 'score': 5},
        {'text': 'Snake', 'score': 7},
        {'text': 'Cow', 'score': 2},
        {'text': 'Lion', 'score': 0}
      ],
    },
    {
      'questionText': 'Who is your teacher?',
      'answers': [
        {'text': 'Khalil', 'score': 10},
        {'text': 'Marcia', 'score': 5},
        {'text': 'Isabella', 'score': 7},
        {'text': 'Jorgiana', 'score': 2},
        {'text': 'Joao', 'score': 0}
      ],
    },
  ];

  void _resetQuiz() {
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
  }

  void _onAnswerBtnPressed(int score) {
    _totalScore += score;
    print('Button Pressed!');

    setState(() {
      _questionIndex += 1;
    });

    if (_questionIndex < _questions.length) {
      print('we have more questions!');
    } else {
      print('Not more questions');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz APP'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                onAnswerBtnPressed: _onAnswerBtnPressed,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
