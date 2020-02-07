import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final String answer;
  final Function eventHandler;
  Answer(this.answer, this.eventHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
              color: Colors.blue,
              child: Text(answer), 
              onPressed: this.eventHandler,
              ),
            );
  }
}