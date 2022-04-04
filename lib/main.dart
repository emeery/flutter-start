import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var questions = ['What\'s your favorite color?','What\s your favorite fruit?'];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('App_First'),
        ), // AppBar
        body: Column(
          children: [
            Text('Cuestionario!'),
            ElevatedButton(
              child: Text('Respuesta 1'), onPressed: null
            ),
            ElevatedButton(
              child: Text('Respuesta 2'), onPressed: null
            ),
            ElevatedButton(
              child: Text('Respuesta 3'), onPressed: null
            ),
          ],
        ), // Column
      ), // Scaffold
    ); // MaterialApp
  }
}
