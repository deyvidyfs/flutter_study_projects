import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String _customText;

  CustomText(this._customText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        _customText,
        textAlign: TextAlign.center,
      ),
    );
  }
}
