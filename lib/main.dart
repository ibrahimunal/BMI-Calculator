import 'package:flutter/material.dart';
import 'ui/input_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Color(0XFF111428),
          scaffoldBackgroundColor: Color(0XFF111428),
          textTheme: TextTheme(body1: TextStyle(color: Colors.white))),
      debugShowCheckedModeBanner: false,
      home: InputPage(),
    );
  }
}
