import 'package:flutter/material.dart';
import './results.dart';
import './quiz.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  final _loda = [
    {
      'questions': 'What is my fav animal??',
      'answers': [
        {'text': 'Dog', 'score': 8},
        {'text': 'Cat', 'score': 6},
        {'text': 'Rhino', 'score': 3},
        {'text': 'Lion', 'score': 10}
      ]
    },
    {
      'questions': 'My Fav vehicle?',
      'answers': [
        {'text': 'truck', 'score': 5},
        {'text': 'Cars', 'score': 10},
        {'text': 'Bike', 'score': 7},
        {'text': 'potato', 'score': 12}
      ]
    },
    {
      'questions': 'My Fav Color??',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 7},
        {'text': 'Purple', 'score': 5},
        {'text': 'Green', 'score': 0}
      ]
    }
  ];
  var counter = 0;
  var _totalScore = 0;

  void returnCount(int score) {
    _totalScore += score;
    setState(() {
      counter = counter + 1;
    });
  }

  void haha() {
    setState(() {
      counter = 0;
    _totalScore = 0;
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.black,
              title: Text('Quiz App'),
            ),
            body: counter < _loda.length
                ? Quiz(returnCount: returnCount, counter: counter, loda: _loda)
                : Result(_totalScore, counter, haha)));
  }
}
