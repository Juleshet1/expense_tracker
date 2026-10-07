import 'dart:match';
import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

@override
  State<DiceRoller> createState(){
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller>{
  final randomizer = random()
  var currentDiceImage = 'assets/images/dice-2.png';
  void rollDice() {
    setState(){
      int num = randomizer.nextInt(6) + 1;
        currentDiceImage = 'assets/images/dice-4.png';
    }
  }

@override
Widget build(context){
  return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/images/dice-$num.png'),
            SizedBox(height: 50),
            TextButton(onPressed: () {}, 
            child: Text("Roll Dice")),
              style: TextStyle(
                fontSize: 28,
                color: Colors.deepOrange),
              ]),
            );
  }
} 

