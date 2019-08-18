import 'package:flutter/material.dart';

import './text_block.dart';

class TextControl extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TextControlState();
  }
}

class TextControlState extends State<TextControl> {
  var _messageIndex = 0;
  var _defaultMessages = [
    'Welcome to Brian\'s Movie Manager',
    'Pick the movie to manage',
    'Pick the server to distribute to',
  ];

  void _modifyMessage(int index) {
    if (index >= _defaultMessages.length - 1) {
      return;
    }

    setState(() {
      this._messageIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextBlock(this._defaultMessages[this._messageIndex]),
        Container(
          width: double.infinity,
          child: RaisedButton(
            child: Text('Confirm'),
            onPressed: () => this._modifyMessage(this._messageIndex),
            color: Colors.amber,
          ),
        ),
      ],
    );
  }
}
