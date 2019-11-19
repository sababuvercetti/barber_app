import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//wn app imports
import 'package:barber_app/uis.dart';
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Barber App',
      theme: CupertinoThemeData(
        brightness: Brightness.dark,
      ),
      home: Splash()
    );
  }
}

