import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function random;
  final String answer;
  Answer(this.random, this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(7),
        child: TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.black),
            ),
            child: Text(
              answer,

              style: TextStyle(fontSize: 18, color: Colors.white),
              // style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.black),
              textAlign: TextAlign.center,
            ),
            onPressed: random));
  }
}
