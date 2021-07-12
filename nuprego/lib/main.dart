import 'package:flutter/material.dart';
import 'package:nuprego/login.dart';
import 'package:nuprego/page.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: <String, WidgetBuilder>{
        '/page': (BuildContext context) => new Page(),
      },
      home: Login(),
    );
  }
}
