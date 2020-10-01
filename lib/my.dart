import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  var index = 0;
  var question = [
    "first",
    "second",
  ];
  void select() {
    setState(() {
      index += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz MAZA"),
        ),
        body: Column(
          children: [
            Text(question[index]),
            RaisedButton(
              child: Text("ANswer1 "),
              onPressed: select,
            ),
            RaisedButton(
              child: Text("ANswer1 "),
              onPressed: select,
            ),
            RaisedButton(
              child: Text("ANswer1 "),
              onPressed: select,
            ),
            RaisedButton(
              child: Text("ANswer1 "),
              onPressed: select,
            ),
          ],
        ),
      ),
    );
  }
}








/*
import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';
import './last.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var index = 0;
  Widget task() {
    return Thanks();
  }

  void onPressed() {
    setState(() {
      if (index < questions.length-1) {
        index += 1;
      }
      if (index == questions.length-1) {
        task();
        return;
      }
    });

    print(index);
  }

  final questions = [
    {
      'questionText': 'What is your favourite color?',
      'answers': [
        'black',
        'red',
        'white',
        'green',
      ],
    },
    {
      'questionText': 'What is your favourite Game?',
      'answers': [
        'Cricket',
        'football',
        'tennis',
        'ludo',
      ],
    },
    {
      'questionText': 'What is your favourite fruit?',
      'answers': [
        'mango',
        'grapes',
        'banana',
        'apple',
      ],
    },
    {
      'questionText': 'What is your favourite animal?',
      'answers': [
        'dog',
        'tiger',
        'lion',
        'rabbit',
      ],
    },
    {
      'questionText': 'Dart made my heart flutter ❤',
      'answers': [
        'YUP',
        'YUP',
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("QUIZ MENIA"),
        ),
        body: Column(
          children: [
            Question(
              questions[index]['questionText'],
            ),
            ...(questions[index]['answers'] as List<String>)
                .map((e) => Answer(onPressed, e))
                .toList()
            // Answer(onPressed),
            // Answer(onPressed),
            // Answer(onPressed),
            // Answer(onPressed),
          ],
        ),
      ),
    );
  }
}


*/










/*

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  var index = 0;
  var question = [
    "first",
    "second",
  ];
  void select() {
    setState(() {
      index += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz MAZA"),
        ),
        body: Column(
          children: [
            Text(question[index]),
            RaisedButton(
              child: Text("ANswer1 "),
              onPressed: select,
            ),
            RaisedButton(
              child: Text("ANswer1 "),
              onPressed: select,
            ),
            RaisedButton(
              child: Text("ANswer1 "),
              onPressed: select,
            ),
            RaisedButton(
              child: Text("ANswer1 "),
              onPressed: select,
            ),
          ],
        ),
      ),
    );
  }
}
*/
