import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {

  final questionInput;
  final int questionIndex;
  final Function answerQuestion;

  Quiz({required this.questionInput, required this.questionIndex, required this.answerQuestion});

  Widget build(BuildContext context) {
    return  Column( children: [
      Question(questionInput[questionIndex]["questionText"]),
      //reading (...) spread operator from list of maps as list map (answer)
      //to widget Answer and return list of widget
      ...(questionInput[questionIndex]['answer'] as List<Map<String, Object>>).map((answer){
        return Answer(() => answerQuestion(answer['score']), answer['text'] as String);
      }).toList(), //toList is not required in resent version of dart.
    ],
    ) ;
  }
}
