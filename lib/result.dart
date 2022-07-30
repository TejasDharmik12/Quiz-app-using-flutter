import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resethandler;
  Result(this.resultScore, this.resethandler);

  String get resultPhrase {
    var resultText = 'You did it';
    if (resultScore <= 8) {
      resultText = 'You are awesome and Innocent';
    } else if (resultScore <= 12) {
      resultText = 'You are pretty likeable';
    } else if (resultScore <= 16) {
      resultText = 'You are good';
    } else {
      resultText = 'You are bad';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: resethandler,
            child: Text(
              'Restart Quiz',
            ),
            textColor: Colors.blue,
          )
        ],
      ),
    );
  }
}
