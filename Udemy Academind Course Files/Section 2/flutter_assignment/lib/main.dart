// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text

import 'package:flutter/material.dart';

import 'app.dart';

void main() => runApp(AssignmentApp());

class AssignmentApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AssignmentAppState();
  }
}

class _AssignmentAppState extends State<AssignmentApp> {
  var _visibleText = 'Default Text';

  void _changeText() {
    setState(() {
      print('button pressed');
      _visibleText = 'Text Changed';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Assignment'),
        ),
        body: App(_visibleText, _changeText),
      ),
    );
  }
}
