import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final Function eventHandler;
  Answer(this.eventHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
              color: Colors.blue,
              child: Text('Answer1'), 
              onPressed: this.eventHandler,
              ),
            );
  }
}