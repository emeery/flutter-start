import 'package:flutter/material.dart';
import 'question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    print(_questionIndex);
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  Widget build(BuildContext contextData) {
    var question = [
      'Who is your favourite teacher?',
      'which is your favourite color?',
      'wich is your favirute food'
    ];
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('My flutter App'),
      ),
      body: Column(
        children: [
          Question(
            question[_questionIndex],
          ),
          RaisedButton(
            child: Text('Question1'),
            onPressed: (_answerQuestion),
          ),
          RaisedButton(
            child: Text('Question2'),
            onPressed: (_answerQuestion),
          ),
          RaisedButton(
            child: Text('Question3'),
            onPressed: (_answerQuestion),
          ),
        ],
      ),
    ));
  }
}
