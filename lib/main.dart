import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void processTheQuestion() {
    print('imprime una respuesta');
  }

  @override
  Widget build(BuildContext context) {
    const questions = ['Tu comida fav', 'tu color fav'];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('App_First'),
        ), // AppBar
        body: Column(
          children: [
            Text('responde la pregunta'),
            RaisedButton(
              child: Text('Respuesta 1'),
              onPressed: () {
                processTheQuestion();
              },
            ),
          ],
        ),
      ), // Scaffold
    ); // MaterialApp
  }
}
