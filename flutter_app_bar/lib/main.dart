import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

//will not change
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

//will change
class _MyAppState extends State<MyApp> {
  String _title = 'App Bar Demo';
  String _myState = 'Asalamu Allaykum wa Rahmatullah';

  void _pressed(String message) {
    //correct way to do things
    setState(() {
      _myState = message;
    });
    //wrong way of doing things
    //_myState=message;
    print(_myState);
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: _title,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(_title),
          actions: <Widget>[
            new IconButton(
              icon: new Icon(Icons.add_alert),
              onPressed: () => _pressed('Pressed Alert'),
            ),
            new IconButton(
              icon: new Icon(Icons.print),
              onPressed: () => _pressed('Pressed print'),
            ),
            new IconButton(
              icon: new Icon(Icons.people),
              onPressed: () => _pressed('Pressed People'),
            ),
          ],
        ),
        body: new Container(
          padding: const EdgeInsets.all(32.0),
          child: new Center(
            child: new Text(_myState),
          ),
        ),
      ),
    );
  }
}
