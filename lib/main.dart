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

  // print(_questionIndex);

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  void _testList() {
    // print("The number is $_questionIndex");
    print("the test works");
    // {question: Color favorito?, answers: [Negro, Azul, Verde]}
  }

  Widget build(BuildContext context) {
    const questions = [
      {
        'question': 'Color fav oie?',
        'answer': ['Negro', 'Azul', 'Verde']
      },
      {
        'question': 'Jugador favorito?',
        'answer': ['Cristiano', 'Messi', 'Neymar']
      }
    ];
    return MaterialApp(

        // theme: ThemeData(appBarTheme: AppBarTheme(color: const Color(283747),),
        theme: ThemeData(
          scaffoldBackgroundColor: Color(0xff123456),
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
            title: Text(
              'CUESTIONES APP',
              style: TextStyle(
                fontFamily: 'Akshar',
                color: Colors.teal,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          body: Column(
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
          ),
        ));
  }
}
