import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  Question(this.questionText);
  Widget build(BuildContext context) {
    return Container( 
      width: double.infinity,
      margin: EdgeInsets.only(left: 69, right: 69, top: 10),
      child: Text(questionText,
      style:  TextStyle(fontSize: 30),
      textAlign: TextAlign.center ,
      )
      );  }
}
