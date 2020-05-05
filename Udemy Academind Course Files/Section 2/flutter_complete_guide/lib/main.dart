import 'package:flutter/material.dart';

import 'quiz.dart';
import 'results.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  Map<String, String> _userAnswers = new Map<String, String>();
  var _questionsAvailable = true;

  static const _QUESTIONS = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['Black', 'Green', 'White', 'Red'],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['Lion', 'Rabbit', 'Snake', 'Elephant', 'Dogs'],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': ['Max', 'George', 'John', 'Travis'],
    }
  ];

  void _answerQuestion(String answer) {
    print('Question ' + _questionIndex.toString() + ' Answered');
    print('The answer was: ' + answer);

    _userAnswers.addAll({_questionIndex.toString(): answer});

    setState(() {
      if (_questionIndex < _QUESTIONS.length - 1) {
        _questionIndex++;
      } else {
        _questionsAvailable = false;
      }
    });
  }

  void _restartQuiz() {
    setState(() {
      _questionIndex = 0;
      _questionsAvailable = true;
      _userAnswers = new Map<String, String>();
    });
  }

  @override
  Widget build(BuildContext context) {
    var _question = _QUESTIONS[_questionIndex]['questionText'];
    List<String> _answers = _QUESTIONS[_questionIndex]['answers'];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionsAvailable
            ? Quiz(
                question: _question,
                answers: _answers,
                onAnswer: _answerQuestion,
              )
            : Results(
                _QUESTIONS,
                _userAnswers,
                _restartQuiz,
              ),
      ),
    );
  }
}
