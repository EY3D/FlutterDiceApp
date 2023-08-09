import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var randomizer = Random();

  var randomInt = 6;

  void rollDice() {
    //print('rollDice called');
    setState(() {
      randomInt = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$randomInt.png',
          width: 200,
        ),
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
              //padding: const EdgeInsets.only(top: 20),
              foregroundColor: Colors.white,
              backgroundColor: Colors.black45,
              textStyle:
                  const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            child: const Text('Roll'))
      ],
    );
  }
}
