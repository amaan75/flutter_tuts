import 'package:flutter/material.dart';

class Second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Alert Dialog navigation'),
      ),
      body: new Container(
        child: new Center(
          child: new Column(
            children: <Widget>[new Text('Demo Text')],
          ),
        ),
      ),
    );
  }
}
