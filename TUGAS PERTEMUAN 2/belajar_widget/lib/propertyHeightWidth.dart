import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text("Contoh Height dan Width")),
          body: Container(
              margin: EdgeInsets.all(50),
              height: 400,
              width: 200,
              alignment: Alignment.center,
              color: Colors.blueGrey,
              child: Text(
                'Semangat Belajar',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ))),
    );
  }
}
