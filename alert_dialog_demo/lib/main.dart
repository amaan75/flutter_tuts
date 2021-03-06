import 'package:flutter/material.dart';
//import 'second.dart';

void main() => runApp(new MaterialApp(
      // routes: <String, WidgetBuilder>{
      //       '/Second': (BuildContext context) => new Second(),
      //     }, NOT NEEDED BUT THIS IS HOW YOU ROUTE
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  MyAppState createState() => new MyAppState();
}

class MyAppState extends State<MyApp> {
  String _text = '';

  void _onChange(String value) {
    setState(() {
      _text = value;
    });
  }

  void _showAlert(String value) {
    if (value.isEmpty) return;
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return new SimpleDialog(
              title: new Text('Simple Dialog which is a little better'),
              children: <Widget>[
                new Text(
                  value,
                  style: new TextStyle(fontSize: 30.0),
                ),
              ]);
        });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Alert dialog demo'),
      ),
      body: new Container(
        child: new Center(
          child: new Column(
            children: <Widget>[
              new TextField(
                onChanged: (value) => _onChange(value),
              ),
              new RaisedButton(
                onPressed: () => _showAlert(_text),
                child: new Text('Show Alert Dialog'),
              ),
              new RaisedButton(
                onPressed: () =>
                    null, // Navigator.of(context).pushNamed('/Second'), if routing needed
                child: new Text('Next page'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
