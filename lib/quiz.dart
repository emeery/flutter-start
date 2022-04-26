import 'package:flutter/material.dart';

class Quiz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
            children: [
              Question(
                questions[_questionIndex]['question'] as String,
              ),
              ...(questions[_questionIndex]['answer'] as List<String>)
                  .map((ans) {
                return Answer(_answerQuestion, ans);
              }).toList(),
              SizedBox(height: 5),
            ],
          )
  }
}