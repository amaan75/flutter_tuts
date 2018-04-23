import 'package:flutter/material.dart';
import 'home.dart';
import 'second.dart';
import 'third.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO:
    return new MaterialApp(
      title: 'Navigation',
      routes: <String,WidgetBuilder>{
        '/Home':(BuildContext context)=> new Home(),
        '/Second':(BuildContext context)=> new Second(),
        '/Third':(BuildContext context)=> new Third(),
        
      },
      home: new Home(),
    );
  }
}
