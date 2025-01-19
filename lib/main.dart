import 'package:flutter/material.dart';
import 'package:gesture_app/gesture.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: GestureApp());
  }
}
