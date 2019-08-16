import 'package:flutter/material.dart';

import './text_block.dart';

class TextControl extends StatelessWidget {
  final String message;
  final Function selectionCallback;

  TextControl({@required this.message, @required this.selectionCallback});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextBlock(this.message),
        Container(
          width: double.infinity,
          child: RaisedButton(
            child: Text('Confirm'),
            onPressed: this.selectionCallback,
            color: Colors.amber,
          ),
        ),
      ],
    );
  }
}
