import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  @override
  final Function link;
  final String dataButton;
  Answer(this.link, this.dataButton);
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(
          dataButton,
          style: TextStyle(fontSize: 20),
        ),
        color: Colors.deepPurpleAccent,
        textColor: Colors.white,
        onPressed: link,
      ),
    );
  }
}
