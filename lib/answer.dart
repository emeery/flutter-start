import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  Answer(this.selectHandler);
  // const Answer({Key? key, this.selectHandler()}) : super(key: key);

  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blueGrey,
        child: Text('Answer 1'),
        onPressed: selectHandler,
      ),
    );
  }
}
