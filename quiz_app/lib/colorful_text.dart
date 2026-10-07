import 'dart:math';
import 'package:flutter/material.dart';

class ColorfulText extends StatefulWidget {
  const ColorfulText({super.key});

  @override
  State<ColorfulText> createState() => _ColorfulTextState();
}

class _ColorfulTextState extends State<ColorfulText> {
  final randomizer = Random();

  final List<Color> colors = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.orange,
    Colors.purple,
  ];

  int select = 0;

  void startQuiz() {
    setState(() {
      select = randomizer.nextInt(colors.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      color: colors[select], 
      width: double.infinity,
      height: double.infinity,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/logo.png',
              width: 200,
            ),
            const SizedBox(height: 20),
            const Text(
              "Learn Flutter the fun way!",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            OutlinedButton(
              onPressed: startQuiz,
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
                side: const BorderSide(color: Colors.white),
              ),
              child: const Text(
                "Start Quiz",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}