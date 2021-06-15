import 'package:flutter/material.dart';
import 'package:flutter_learning/intro_slider/intro_slider.dart';

void main() {
  runApp(LearningApp());
}

class LearningApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Learning App',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: IntroScreen(),
    );
  }
}