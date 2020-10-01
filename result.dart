import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int finalScore;
  final Function reset;
  Result(this.finalScore, this.reset);

  String get resultPhase {
    String resultText;
    if (finalScore <= 20)
      resultText = "you are bad 😤";
    else if (finalScore <= 30)
      resultText = "you are good 😉";
    else if (finalScore <= 40)
      resultText = "TOU ARE AWESOME AND GOOD PERSONALITY 😍";
    else
      resultText =
          "You are neither good noe awesome just an Ordinary people!!!";
    return resultText;
  }

  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width:300,
        height:130,
        color: Colors.red,
        padding: EdgeInsets.all(15),
        margin: EdgeInsets.all(20),

        child: Center(
          child: Column(children: [
          Text(
            resultPhase,
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: reset,
            child: Text(
              "Reset Quiz!!",
              style: TextStyle(
                fontWeight: FontWeight.bold,color: Colors.white,
              ),
            ),
          ),
        ]),
        )
        
      ),
    );
  }
}
