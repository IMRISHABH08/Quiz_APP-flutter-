import 'package:flutter/material.dart';

class Thanks extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Center(
            child: Text(
              "THANKS FOR PLAYING ",
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
              //  textColor: Colors.white;
            ),
          ),
        ),
      ),
    );
  }
}
