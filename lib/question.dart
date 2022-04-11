import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  // var questions = ['question file works!', 'oyeme'];
  final String question;
  Question(this.question); // expect

  @override
  Widget build(BuildContext context) {
    // print("The number is $question");
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        question,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 28),
      ),
    );
  }
}
