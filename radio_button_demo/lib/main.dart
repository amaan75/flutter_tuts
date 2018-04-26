import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
      home: new MyApp(),
    ));

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => new MyAppState();
}

class MyAppState extends State<MyApp> {
  int _selected = 0;

  void _onChanged(int value) {
    setState(() {
      _selected = value;
    });
    print('this is $_selected');
  }

  List<Widget> makeRadios() {
    List<Widget> radios = new List<Widget>();

    for (int i = 1; i <= 3; i++) {
      radios.add(new Row(
        children: <Widget>[
          new Text('Radio $i'),
          new Radio(
            onChanged: (int value) => _onChanged(value),
            groupValue: _selected,
            value: i,
          ),
        ],
      ));
    }

    for (int i = 1; i < 4; i++) {
      radios.add(
        new RadioListTile(
          title: new Text('RadioList $i'),
          onChanged: (int value) => _onChanged(value),
          groupValue: _selected,
          value: i,
          activeColor: Colors.redAccent,
          secondary: const Icon(Icons.home),
          subtitle: new Text('Sub Title for Radio $i'),
        ),
      );
    }

    return radios;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Radio Button Demo'),
      ),
      body: new Container(
        padding: const EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: makeRadios(),
          ),
        ),
      ),
    );
  }
}
