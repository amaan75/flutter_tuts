import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {

  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _title = 'Login Demo';
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Login Demo',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(_title),
          actions: <Widget>[
            new IconButton(
              icon: new Icon(Icons.home),
              onPressed: null,
            ),
            new IconButton(
              icon: new Icon(Icons.exit_to_app),
              onPressed: null,
            ),
          ],
        ),
      ),
    );
  }
}
