import 'package:flutter/material.dart';

import 'package:dice_app/dice.dart';
// import 'package:dice_app/dice-images/';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  

  // String img='assets/dice-images/dice-1.png';
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dice App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Dice App'),
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Dice()

        ),
      ),
    );
  }
}
