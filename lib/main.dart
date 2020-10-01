import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var _index = 0;
  var _totalScore = 0;
  void _reset() {
    setState(() {
      _index = 0;
      _totalScore = 0;
    });
  }

  void _onPressed(int score) {
    _totalScore += score;

    setState(() {
      _index += 1;
      print(_index);
    });
    if (_index < _questions.length)
      print("MORE QUESTIONS ARE THERE !!");
    else
      print("YOU DUD IT!!!");
  }

  var _questions = [
    {
      'questionText': 'What is your favourite color?',
      'answers': [
        {'text': 'black', 'score': 1},
        {'text': 'red', 'score': 2},
        {'text': 'white', 'score': 8},
        {'text': 'green', 'score': 5},
      ],
    },
    {
      'questionText': 'What is your favourite Game?',
      'answers': [
        {'text': 'Judo', 'score': 1},
        {'text': 'Karate', 'score': 2},
        {'text': 'Cricket', 'score': 5},
        {'text': 'Chess', 'score': 3},
      ],
    },
    {
      'questionText': 'What is your favourite fruit?',
      'answers': [
        {'text': 'Mango', 'score': 10},
        {'text': 'Grapes', 'score': 5},
        {'text': 'Banana', 'score': 7},
        {'text': 'Pineapple', 'score': 3},
      ],
    },
    {
      'questionText': 'What is your favourite animal?',
      'answers': [
        {'text': 'Lion', 'score': 3},
        {'text': 'Horse', 'score': 4},
        {'text': 'Rabbit', 'score': 5},
        {'text': 'Dog', 'score': 3},
      ],
    },
    {
      'questionText': 'Dart made my heart flutter ❤',
      'answers': [
        {'text': 'YUP', 'score': 5},
        {'text': 'YUP', 'score': 5},
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "QUIZ MENIA 🎯",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        body: (_index < _questions.length)
            ? Quiz(
                index: _index,
                questions: _questions,
                onPressed: _onPressed,
              )
            : Result(_totalScore,_reset),
      ),
    );
  }
}

