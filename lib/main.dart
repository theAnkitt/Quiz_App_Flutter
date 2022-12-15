import "package:flutter/material.dart";
import 'result.dart';
import 'quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  //state need pointer to the class
  var questions = [
    {
      'questionText': 'What is The national game of India',
      'answer': [
        {'text': 'Cricket', 'score': 0},
        {'text': 'Football', 'score': 0},
        {'text': 'Hockey', 'score': 10},
        {'text': 'DogeBall', 'score': 0}
      ]
    },
    {
      'questionText': 'What is national animal of India',
      'answer': [
        {'text': 'Tiger', 'score': 10},
        {'text': 'Lion', 'score': 0},
        {'text': 'Elephant', 'score': 0},
        {'text': 'Dog', 'score': 0}
      ]
    },
    {
      'questionText': 'What is you Fav Colour',
      'answer': [
        {'text': 'Red', 'score': 0},
        {'text': 'Blue', 'score': 0},
        {'text': 'Green', 'score': 10},
        {'text': 'Black', 'score': 0}
      ]
    },
  ];
  var questionIndex = 0;
  var totalScore = 0;

  void resetQuiz (){
    setState(() {
      totalScore = 0;
      questionIndex = 0;
    });
    print("Reset Successful");
  }
  void answerQuestion(int score) {
    totalScore += score;
    setState(() {
      questionIndex++;
    });
    print("Answered!!!");
    print(totalScore);
  }

  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text('MyApp'),
            ),
            body: questionIndex < questions.length
                ? Quiz(
                    answerQuestion: answerQuestion,
                    questionIndex: questionIndex,
                    questionInput: questions,
                  )
                : Result(resultScore: totalScore,resetQuiz: resetQuiz,)));
  }
}
