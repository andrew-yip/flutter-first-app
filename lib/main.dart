import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var isLoading = false;
  var btnText = ['press to start spinning', 'press to stop spinning'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('application [0]')),
          backgroundColor: Colors.green,
        ),
        body: Scaffold(
            body: ListView(
              children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  'Andrew Yip\nsoftware engineer',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 50.2,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                child: Text(isLoading ? btnText[1] : btnText[0]), // ternary. if loading true text = [1] else [0]
                onPressed: () {
                  setState(() {
                    // set state method only available to stateful widgets
                    isLoading = !isLoading; // flip value of isLoading
                  });
                },
              ),
            ),
            isLoading ? SpinKitCubeGrid(size: 100.0, color: Colors.lightBlue) : Container() // show spinner if loading
          ],
        )),
      ),
    );
  }
}
