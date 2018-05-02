import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
      home: new MyApp(),
    ));

class MyApp extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<MyApp> {
  String _value;
  List<String> _values = new List<String>();

  @override
  void initState() {
    super.initState();
    _values.addAll(['Amaan', 'Ashu', 'Sanjay', 'Ibrahim']);
    _value = _values[0];
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('DropDown button'),
      ),
      body: new Container(
        padding: const EdgeInsets.all(32.0),
        child: new Column(
          children: <Widget>[
            new DropdownButton(
              onChanged: (String value) => setState(() => _value = value),
              items: _values
                  .map((element) => new DropdownMenuItem(
                        child: new Text(element),
                        value: element,
                      ))
                  .toList(),
              value: _value,
            ),
          ],
        ),
      ),
    );
  }
}
