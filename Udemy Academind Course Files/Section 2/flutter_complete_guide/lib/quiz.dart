import 'package:flutter/material.dart';

import './Question.dart';
import './Answer.dart';

class Quiz extends StatelessWidget {
  String question;
  List<String> answers;
  Function onAnswer;

  Quiz(
      {@required this.question,
      @required this.answers,
      @required this.onAnswer});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(question),
        ...answers.map((answer) {
          return Answer(() => onAnswer(answer), answer);
        }).toList()
      ],
    );
  }
}
