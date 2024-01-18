import 'package:flutter/material.dart';

class StyleText extends StatelessWidget {
  const StyleText({super.key, required this.text});
  final String text;

  @override
  Widget build(context) {
    return Text(text,
        style: const TextStyle(
          color: Color.fromARGB(255, 9, 0, 17),
          fontSize: 28,
          fontWeight: FontWeight.bold,
        ));
  }
}
