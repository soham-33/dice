import 'package:flutter/material.dart';
import 'package:dice/gradientcontainer.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(colorList: const [
          Colors.deepPurple,
          Colors.purple,
          Colors.purpleAccent
        ]),
      ),
    ),
  );
}
