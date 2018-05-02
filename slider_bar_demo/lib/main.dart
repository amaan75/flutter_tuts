import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
      home: new MyApp(),
    ));

class MyApp extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<MyApp> {
  double _value = 0.0;

  void _onChanged(double value) {
    setState(() {
      _value = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Hello world'),
      ),
      body: new Container(
        padding: const EdgeInsets.all(32.0),
        child: new Column(
          children: <Widget>[
            new Text('Slider value is ${_value.round()}'),
            new Slider(
              min: 0.0,
              max: 100.0,
              value: _value,
              onChanged: (double value) => _onChanged(value),
            ),
            new Text('Slider value is ${(_value*0.01).toStringAsFixed(2)}'),
            new LinearProgressIndicator(
              value: _value * .01, //the linear progression indicator take values from 0 to 1
            ),
          ],
        ),
      ),
    );
  }
}
