import 'package:flutter/material.dart';
import 'styled text.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});



  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            const Color.fromARGB(255, 129, 103, 102),
            const Color.fromARGB(255, 219, 0, 0),
          ],
        ),
      ),
      child: Center(
        child: DiceRoller()
        
        ),

      ),
    );
  }
}