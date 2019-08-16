import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import './text_control.dart';

main() => runApp(MovieManager());

class MovieManager extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MovieManagerState();
  }
}

class MovieManagerState extends State<StatefulWidget> {
  var _messageIndex = 0;
  var _defaultMessages = [
    'Welcome to Brian\'s Movie Manager',
    'Pick the movie to manage',
    'Pick the server to distribute to',
  ];

  void _modifyMessage() {
    setState(() {
      this._messageIndex++;
    });
  }

  @override
  Widget build(BuildContext ctx) {
    return MaterialApp(
      title: 'Brian\'s Movie Manager',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Brian\'s Movie Manager'),
          ),
          body: TextControl(
            message: this._defaultMessages[this._messageIndex],
            selectionCallback: this._modifyMessage,
          )),
    );
  }
}
