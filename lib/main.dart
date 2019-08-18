import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import './text_control.dart';

main() => runApp(MovieManager());

class MovieManager extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return MaterialApp(
      title: 'Brian\'s Movie Manager',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Brian\'s Movie Manager'),
        ),
        body: TextControl(),
      ),
    );
  }
}
