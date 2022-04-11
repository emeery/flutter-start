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
            primaryVariant: Colors.grey,
            secondary: Colors.grey,
            secondaryVariant: Colors.grey,
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
              ElevatedButton(
                child: Text('Question1'),
                style: ElevatedButton.styleFrom(primary: Colors.indigo),
                onPressed: (_answerQuestion),
              ),
              SizedBox(height: 5),
              ElevatedButton(
                child: Text('Question2'),
                style: ElevatedButton.styleFrom(primary: Colors.lightBlue),
                onPressed: (_answerQuestion),
              ),
              SizedBox(height: 5),
              ElevatedButton(
                child: Text('Question3'),
                style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 100, 117, 218)),
                onPressed: (_answerQuestion),
              ),
            ],
          ),
        ));
  }
}
