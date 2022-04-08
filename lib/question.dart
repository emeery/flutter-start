import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  // var questions = ['question file works!', 'oyeme'];
  final String question;
  Question(this.question); // expect

  @override
  Widget build(BuildContext context) {
    // print("The number is $question");
    return Text(
      question,
      style: TextStyle(fontSize: 28, foreground: Paint()..color = Colors.blue),
    );
  }
}
