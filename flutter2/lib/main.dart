import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Basic Layouts',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Basic Layouts'),
        ),
        body: new Container(
          padding: const EdgeInsets.all(32.0),
          child: new Center(
            child: new Column(
              children: <Widget>[
                new Text('Hello'),
                new Text('World'),
                new Text('!!!'),
                new Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Container(
                      padding: const EdgeInsets.all(4.0),
                      child: new Column(
                        children: <Widget>[
                          new Text('Hello'),
                          new Text('World'),
                          new Text('!!!'),
                        ],
                      ),
                    ),
                    new Container(
                      padding: const EdgeInsets.all(4.0),
                      child: new Column(
                        children: <Widget>[
                          new Text('Hello'),
                          new Text('World'),
                          new Text('!!!'),
                        ],
                      ),
                    ),
                    new Container(
                      padding: const EdgeInsets.all(4.0),
                      child: new Column(
                        children: <Widget>[
                          new Text('Hello'),
                          new Text('World'),
                          new Text('!!!'),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
