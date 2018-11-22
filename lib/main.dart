import 'package:flutter/material.dart';
import 'home.dart';
import 'match_scouting.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData( primaryColor: Colors.blueAccent),
      home: homeTabs,
    );
  }
}

