import 'package:flutter/material.dart';
import 'dart:math';

class Dice extends StatefulWidget {
  const Dice({super.key});
  @override
  State<Dice> createState(){return _DiceState();}
}

class _DiceState extends State<Dice> {

  var img="assets/dice-images/dice-1.png";
  var images = [
    'assets/dice-images/dice-1.png',
    'assets/dice-images/dice-2.png',
    'assets/dice-images/dice-3.png',
    'assets/dice-images/dice-4.png',
    'assets/dice-images/dice-5.png',
    'assets/dice-images/dice-6.png'
  ];
  void roll() {

    setState((){
        Random rand= Random();
        int randno=rand.nextInt(images.length);
        img=images[randno];
      } 
    );
    
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(img, width: 200),
        const SizedBox(height: 40),
        ElevatedButton(onPressed: roll, child: const Text("Roll")),
      ],
    );
  }
}
