import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final VoidCallback answerQuestion;

  const Quiz(
      {Key? key,
      required this.questions,
      required this.questionIndex,
      required this.answerQuestion})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['question'] as String,
        ),
        ...(questions[questionIndex]['answer'] as List<String>).map((ans) {
          return Answer(selectHandler: answerQuestion, answerText: ans);
        }).toList(),
        SizedBox(height: 5),
      ],
    );
  }
}
