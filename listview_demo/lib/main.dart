import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
      home: new MyApp(),
    ));

class MyApp extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<MyApp> {
  List<bool> _data = new List<bool>();

  @override
  void initState() {
    super.initState();
    setState(() {
      for (int i = 1; i < 100; i++) {
        _data.add(false);
      }
    });
  }

  void _onChange(bool value, int index) {
    setState(() {
      _data[index] = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('List View Demo'),
      ),
      body: new ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return new CheckboxListTile(
            value: _data[index],
            onChanged: (value) => _onChange(value, index),
            title: new Text('This is list item $index'),
            secondary: const Icon(Icons.account_circle),
            subtitle: new Text('Activate Account or nah?'),
          );
        },
        itemCount: _data.length,
      ),
    );
  }
}
