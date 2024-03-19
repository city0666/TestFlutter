import 'package:flutter/material.dart';
import 'package:test_flutter/screen1.dart';
import 'package:test_flutter/screen2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (context) => Screen1(),
        "/Screen2": (context) => Screen2(),
      },
    );
  }
}
