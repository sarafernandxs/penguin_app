// lib/main.dart
import 'package:flutter/material.dart';
import 'screens/login_screen.dart';


void main() {
  runApp(const PenguinApp());
}

class PenguinApp extends StatelessWidget {
  const PenguinApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PenguinApp 🐧',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginScreen(),
    );
  }
}