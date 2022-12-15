import "package:flutter/material.dart";

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answers;
  Answer(this.selectHandler,this.answers);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child:  Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
            onPressed: selectHandler,
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue)),
            child: Text(answers)),
      ),);
  }
}
