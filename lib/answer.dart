import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;
  Answer(this.selectHandler, this.answerText);
  // const Answer({Key? key, this.selectHandler, this.answerText}) : super(key: key);

  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.teal,
        textColor: Colors.tealAccent,
        child: Text(
          answerText,
          style: TextStyle(fontSize: 30),
        ),
        onPressed: selectHandler,
      ),
    );
  }
}
