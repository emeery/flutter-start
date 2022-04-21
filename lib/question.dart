import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  // var questions = ['question file works!', 'oyeme']
  final String question;
  Question(
    this.question,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        question,
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.lightGreen,
            fontSize: 28,
            fontFamily: 'Akshar',
            fontWeight: FontWeight.normal),
      ),
    );
  }
}
