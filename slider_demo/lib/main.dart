import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(home: new MyApp()));

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => new MyAppState();
}

class MyAppState extends State<MyApp> {
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Slider Bar demo'),
      ),
      body: new Container(
        padding: const EdgeInsets.all(32.0),
        child: new Column(
          children: <Widget>[
            new Switch(
              value: _value,
              onChanged: (bool value) => setState(() => _value = value),
            ),
            new SwitchListTile(
              value: _value,
              onChanged: (bool value) => setState(() => _value = value),
              title: new Text('Wallet Payment'),
              secondary: const Icon(Icons.account_balance_wallet),
              subtitle: new Text('Allow Wallet Payment'),
              activeColor: Colors.deepPurpleAccent,
            ),
          ],
        ),
      ),
    );
  }
}
