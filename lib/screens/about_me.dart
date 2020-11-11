import 'package:flutter/material.dart';

class AboutMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About Me"),
      ),
      body:
        Container(
          child: ListView(
              children: <Widget>[
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('Go back!'),
                    ),
                  ),
        Container (
          padding: const EdgeInsets.all(16.0),
          width: MediaQuery.of(context).size.width*0.8,
              child: new Column (
                children: <Widget>[
                  new Text ("Flutter Application 0 Andrew Yip ", textAlign: TextAlign.left, style: TextStyle(
                    color: Colors.blue,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),),
                  new Text ("This is my first Flutter application. ", textAlign: TextAlign.left),
                ],
              ),
          ),
              ],
          )
        ),
    );
  }
}