import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultMessage {
    var resultText;

    if (resultScore <= 8) {
      resultText = 'You Are AweSome And Innocent!';
    } else if (resultScore <= 12) {
      resultText = 'Prretty likeable!';
    } else {
      resultText = 'You just did it!';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultMessage,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: resetHandler,
            child: Text('Restart Quiz!'),
            textColor: Colors.blue,
          )
        ],
      ),
    );
  }
}
