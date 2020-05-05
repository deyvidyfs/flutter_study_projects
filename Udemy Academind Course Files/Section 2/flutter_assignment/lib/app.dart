import 'package:flutter/material.dart';

import 'textControl.dart';
import 'customText.dart';

class App extends StatelessWidget {

  Function _appAction;
  String _appText;

  App(this._appText, this._appAction);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          CustomText(_appText),
          TextControl('Change Text', _appAction)
        ],
      ),
    );
  }
}
