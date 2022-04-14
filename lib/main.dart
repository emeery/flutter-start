import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

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
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  Widget build(BuildContext contextData) {
    var question = [
      'Color favorito?',
      'Who is your favourite teacher?',
      'wich is your favorite food'
    ];
    return MaterialApp(
        // theme: ThemeData(appBarTheme: AppBarTheme(color: const Color(283747),),
        theme: ThemeData(
          colorScheme: ColorScheme(
            brightness: Brightness.light,
            primary: Color.fromARGB(255, 49, 67, 90),
            onPrimary: Colors.white,
            // Colors that are not relevant to AppBar in LIGHT mode:
            secondary: Colors.grey,
            onSecondary: Colors.grey,
            background: Colors.grey,
            onBackground: Colors.grey,
            surface: Colors.grey,
            onSurface: Colors.grey,
            error: Colors.grey,
            onError: Colors.grey,
          ),
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text('My flutter App'),
          ),
          body: Column(
            children: [
              Question(
                question[_questionIndex],
              ),
              SizedBox(height: 5),
              Answer(_answerQuestion),
              SizedBox(height: 5),
              // Answer(),
              SizedBox(height: 5),
              // Answer()
            ],
          ),
        ));
  }
}
