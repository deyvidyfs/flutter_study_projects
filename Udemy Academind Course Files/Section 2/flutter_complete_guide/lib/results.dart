import 'package:flutter/material.dart';

class Results extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Map<String, String> answers;
  final Function restartQuiz;

  Results(this.questions, this.answers, this.restartQuiz);

  String get userResults {
    var results = '';

    for (int i = 0; i < questions.length; i++) {
      results += questions[i]['questionText'].toString() +
          ' ' +
          answers[i.toString()] +
          '\n';
    }

    return results;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        Text(
          'You did it!',
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        ),
        Text(
          'Here are your anwers:',
          style: TextStyle(fontSize: 30),
        ),
        Text(
          userResults,
          textAlign: TextAlign.center,
        ),
        FlatButton(
          onPressed: restartQuiz,
          child: Text('Restart Quiz'),
          textColor: Colors.blue,
        ),
      ]),
    );
  }
}
