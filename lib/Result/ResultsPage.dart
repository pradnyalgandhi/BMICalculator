import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/Buttons/ReusableCard.dart';
import 'package:bmi_calculator/Buttons/Calculator.dart';
import 'Excercises.dart';

class ResultsPage extends StatelessWidget {

  ResultsPage({@required this.score, @required this.bmiCategory,@required this.suggestion});

  final String score;
  final String bmiCategory;
  final String suggestion;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI Calculator'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Text(
                'Your Results',
                style: kYourAnswer,
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
                flex: 5,
                child: ReusableCard(
                  colour: Colors.blueGrey[800],
                  cardchild: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Expanded(
                          child: Text(
                        bmiCategory.toUpperCase(),
                        style: kCategory,
                        textAlign: TextAlign.center,
                      )),
                      Expanded(
                          child: Text(
                        score,
                        style: kAnswer,
                        textAlign: TextAlign.center,
                      )),
                      Expanded(
                          child: Text(
                        suggestion,
                        style: kSolution,
                        textAlign: TextAlign.center,
                      )),
                    ],
                  ),
                )),
            Calculator(buttonTitle: 'EXCERCISES & TIPS',onPress:(){ Navigator.push(context,
            MaterialPageRoute(builder: (context) => Excercises()));},),
            Calculator(buttonTitle: 'RE-CALCULATE',onPress: (){
              Navigator.pop(context);
            },),

          ],
        ));
  }
}
