import 'package:flutter/material.dart';

class TextBlock extends StatelessWidget {
  final String _text;

  TextBlock(this._text);

  @override
  Widget build(BuildContext ctx) {
    return Text(this._text);
  }
}
