import 'package:dice/styletext.dart';
import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activediceimage = 'assets/images/dice-1.png';
  rollDice() {
    var currentimagevalue = randomizer.nextInt(6) + 1;
    setState(() {
      activediceimage = 'assets/images/dice-$currentimagevalue.png';
    });
  }

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            activediceimage,
            width: 200,
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: rollDice,
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 201, 6, 168),
              padding: const EdgeInsets.all(10),
            ),
            child: const StyleText(text: "CLICK TO ROLL"),
          )
        ],
      ),
    );
  }
}
