import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('App_First'),
        ), // AppBar
        body: Text('Default Texto'),
      ), // Scaffold
    ); // MaterialApp
  }
}
