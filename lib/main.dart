import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('App 1')),
          backgroundColor: Colors.green,
        ),
        body: Center(
            child: Text(
          'Andrew Yip',
          style: TextStyle(
            color: Colors.blue,
            fontSize: 50.2,
            fontWeight: FontWeight.bold,
          ),
        )),
      ),
    );
  }
}
