import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final int counter;
  final Function haha;
  Result(this.totalScore, this.counter, this.haha);

  String get resultPhrase {
    String resultText;
    if (totalScore >= 0) {
      resultText = totalScore.toString();
    }
    // } else if (totalScore >= 25) {
    //   resultText = 'okok';
    // } else if (totalScore > 20) {
    //   resultText = 'bevarsi';
    // } else {
    //   resultText = 'EWWWW';
    // }

    return resultText;
  }

  Widget build(BuildContext context) {
    return Center(
        child: Column(children: [
      Text(
        resultPhrase,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 50, color: Colors.black),
      ),
      TextButton(child: Text('Retry quiz?'), onPressed: haha)
    ]));
  }
}
