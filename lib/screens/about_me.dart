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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'A little bit about me is that I am a junior studying Computer Science with minors in Physics and Mathematics. I enjoy programming and creating things to innovate technology. Ever since a young age, I have been in love with technology and becoming more knowledgable in things I love doing which is learning. \n\n In my free time, when I am not programming, I enjoy surfing and playing tennis. ',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                ),
              ],
          )
        ),
    );
  }
}