import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(TimerApp());
}

class TimerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Timer App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(), // 👈 HIER wird deine Seite geladen
    );
  }
}