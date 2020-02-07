import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  static const _questions = [
    {
      'question':'What\'s your favourite color?',
      'answer':['Red', 'Green', 'Yellow','Orange']
    },
    {
      'question':'Which\'s your favourite city?',
      'answer':['Chennai', 'Bengaluru', 'Delhi','Mumbai','Kolkata']
    },
        {
      'question':'What\'s your favourite sports?',
      'answer':['Hockey', 'Football', 'Indoor']
    }
  ];

  int _questionIndex = 0;

  _onAnswered() {
    setState(() {
       _questionIndex = _questionIndex + 1;
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
        body: (_questionIndex < _questions.length) 
          ? Quiz(
          _questions, _questionIndex, _onAnswered
          ) 
          : Result(
            
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