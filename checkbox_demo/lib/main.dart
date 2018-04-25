import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
      home: new MyApp(),
    ));

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => new MyAppState();
}

class MyAppState extends State<MyApp> {
  bool _isChecked = false;

  void _onChanged(bool value) {
    setState(() {
      _isChecked = value;
    });
    print('$_isChecked');
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Checkbox Demo'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Row(
                children: <Widget>[
                  new Text('Click this ->'),
                  new Checkbox(
                    value: _isChecked,
                    onChanged: (bool value) => _onChanged(value),
                  ),
                ],
              ),
              new CheckboxListTile(
                title: new Text('Click me to check/uncheck'),
                value: _isChecked,
                activeColor: Colors.redAccent,
                secondary: new Icon(Icons.cloud_circle),
                onChanged: (bool value) => _onChanged(value),
              )
            ],
          ),
        ),
      ),
    );
  }
}
