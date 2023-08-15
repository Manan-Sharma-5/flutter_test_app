import 'package:flutter/material.dart';
import 'package:test_app/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GDSC Test App',
      theme: ThemeData(),
      home: const Scaffold(
        body: WelcomeScreen(),
      ),
    );
  }
}
