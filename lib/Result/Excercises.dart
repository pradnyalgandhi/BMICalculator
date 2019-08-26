import 'package:flutter/material.dart';
import 'IndividualSet.dart';

class Excercises extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EXCERCISES & TIPS'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          IndividualSet(title: 'UNDERWEIGHT',excercise1: '1. Planks',excercise2: '2. Squats',excercise3: '3. A good diet plans ', ),
          IndividualSet(title: 'NORMAL',excercise1: '1. Push-ups',excercise2: '2. Crunches',excercise3: '3. Running',),
          IndividualSet(title: 'OVERWEIGHT',excercise1: '1. Running',excercise2: '2. Push-ups',excercise3: '3. Abs',),



        ],
      ),
    );
  }
}



