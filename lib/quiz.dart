import 'package:flutter/material.dart';
import './question.dart';
import './button.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> loda;
  final int counter;
  final Function returnCount;

 Quiz({this.returnCount, this.counter, this.loda});
  

  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(loda[counter]['questions']),
        ...(loda[counter]['answers'] as List<Map<String,Object>>).map((valueHere) {
          return Answer(() =>returnCount(valueHere['score']), valueHere['text']);
        }).toList()
      ],
    );
  }
}



















///Pasteafter toList


//long method
        // FloatingActionButton(

        //     child: Text('Yes haha',

        //     style: TextStyle(fontSize: 18),
        //     textAlign: TextAlign.center,),
        //     onPressed: returnCount),
        //     // width: double.infinity;
        // ElevatedButton(
        //   style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.black),),
        //   child:
        //  Text('NO RA',
        // style: TextStyle(fontSize: 18),
        // // style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.black),
        // textAlign: TextAlign.center,)
        // ,
        //  onPressed: returnCount)
        // Button(returnCount,loda),