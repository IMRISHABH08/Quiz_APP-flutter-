import 'package:flutter/material.dart';

import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final index;
  final Function onPressed;
  final List<Map<String, Object>> questions;

  Quiz({
    @required this.questions,
    @required this.index,
    @required this.onPressed,
  });
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[index]['questionText'],
        ),
        ...(questions[index]['answers'] as List<Map<String,Object>>)
            .map((e) => Answer(()=>onPressed(e['score']), e['text']))
            .toList()
        // Answer(onPressed),
        // Answer(onPressed),
        // Answer(onPressed),
        // Answer(onPressed),
      ],
    );
  }
}
