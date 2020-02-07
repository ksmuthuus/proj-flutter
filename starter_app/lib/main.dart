import 'package:flutter/material.dart';
import 'package:starter_app/answer.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questions = [
    'What\'s your favourite color?',
    'What\'s your birth country?',
    'Choose the best option to define yourself',
  ];

  int _questionIndex = 0;

  _onAnswered() {
    setState(() {
       _questionIndex = _questionIndex + 1;
      if(_questionIndex >= _questions.length){
        _questionIndex = 0;
      }
     
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question(_questions[_questionIndex]),
            Answer(_onAnswered),
            Answer(_onAnswered),
            Answer(_onAnswered),
            Answer(_onAnswered),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.business),
          title: Text('Business'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.school),
          title: Text('School'),
        ),
      ],
    )
      ),
    );
  }
}