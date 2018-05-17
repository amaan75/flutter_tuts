import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(home: new MyApp()));

class MyApp extends StatefulWidget {
  MyAppState createState() => new MyAppState();
}

class MyAppState extends State<MyApp> {
  String _text = '';

  void _onPressed() {
    print('The text is $_text');
    print('The name acquired using controller is ${_controller.text}');
  }

/*
a more explainatory way of implementing what i did on onChanged.
 */
  // void _onChanged(String value) {
  //   setState(() { //anonymouse function.
  //     _text = value;
  //   });
  // }

//If we want to get the text without using state we can do that by using TextEditing Controller
  TextEditingController _controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('TextField Demo'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new TextField(
                
                maxLines: 3,
                autocorrect: false,
                decoration: new InputDecoration(
                  icon: new Icon(Icons.print),
                  hintText: 'Type your name',
                  labelText: 'What is your name?',
                ),
              ),
              new RaisedButton(
                onPressed: () => _onPressed(),
                child: new Text('Click me!'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
