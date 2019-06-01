import 'package:flutter/material.dart';
import 'package:flutter_community19/home.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(
          primaryColor: Colors.lightBlue,
          primaryColorDark: const Color(0xFF167F67),
          accentColor: Colors.lightBlue,
          primaryTextTheme: TextTheme(title: TextStyle(color: Colors.white))),
      debugShowCheckedModeBanner: false,
      title: 'Hack19',
      home: Home(),
    );
  }
}
