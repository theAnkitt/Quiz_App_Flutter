import 'package:flutter/material.dart';
class Result extends StatelessWidget {

  var resultScore;
  VoidCallback resetQuiz;
  Result({required this.resultScore,required this.resetQuiz});

  String get resultOut{
    var resultText = ("$resultScore/30");
    return resultText;
  }

  Widget build(BuildContext context) {
    return Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,children: [
        const Text('All done your Score: ',style: TextStyle(fontSize: 28),),
        Text(resultOut,style: const TextStyle(fontSize: 28)),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: FlatButton(onPressed: resetQuiz, child: Text('Reset Quiz'), color: Colors.redAccent),
        )
    ],));
  }
}
