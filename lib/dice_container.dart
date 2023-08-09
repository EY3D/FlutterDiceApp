import 'package:flutter/material.dart';
import 'package:flutter_dice_app/dice_roller.dart';

class DiceContainer extends StatelessWidget {
  const DiceContainer({super.key});

  @override
  Widget build(context) {
    return Container(
      color: Colors.purple,
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
