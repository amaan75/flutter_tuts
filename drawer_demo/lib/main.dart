import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
      home: new MyApp(),
    ));

class MyApp extends StatefulWidget {
  @override
  State createState() => new _State();
}

class _State extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Enter Your Stuff'),
      ),
      drawer: new Drawer(
        child: new Container(
          padding: const EdgeInsets.all(32.0),
          child: new Column(
            children: <Widget>[
              new Text('Hello Drawer'),
              new RaisedButton(
                color: Colors.red,
                child: new Text('Close'),
                onPressed: () {
                  Navigator.pop(context);
                },
              )
            ],
          ),
        ),
      ),
      body: new Container(
        padding: const EdgeInsets.all(32.0),
        child: new Column(
          children: <Widget>[],
        ),
      ),
    );
  }
}
