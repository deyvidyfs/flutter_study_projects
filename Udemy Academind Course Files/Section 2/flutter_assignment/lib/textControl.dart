import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final String _textButton;
  final Function _buttonAction;

  TextControl(this._textButton, this._buttonAction);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: _buttonAction,
      child: Text(_textButton),
    );
  }
}
