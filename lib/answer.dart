import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  // const Answer(this.selectHandler, this.answerText);
  const Answer(
      {Key? key, required this.selectHandler, required this.answerText})
      : super(key: key);

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
