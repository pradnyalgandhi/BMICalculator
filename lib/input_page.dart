import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'MaleFemale.dart';
import 'package:bmi_calculator/Buttons/ReusableCard.dart';
import 'constants.dart';
import 'package:bmi_calculator/Buttons/RoundActionButton.dart';
import 'package:bmi_calculator/Buttons/Calculator.dart';
import 'package:bmi_calculator/Result/ResultsPage.dart';
import 'CalculatorBrain.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;

  Color malecardcolour = Colors.black;
  Color femalecardcolour = Colors.black;
  int height = 180;
  int weight = 60;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR',
          style: TextStyle(color: Colors.yellowAccent),

        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                    child: ReusableCard(
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  colour: selectedGender == Gender.male
                      ? kactivecardcolour
                      : kinactivecardcolour,
                  cardchild: MaleFemale(
                    gender: FontAwesomeIcons.mars,
                    type: 'MALE',
                  ),
                )),
                Expanded(
                    child: ReusableCard(
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  colour: selectedGender == Gender.female
                      ? kactivecardcolour
                      : kinactivecardcolour,
                  cardchild: MaleFemale(
                    gender: FontAwesomeIcons.venus,
                    type: 'FEMALE',
                  ),
                )),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: kcontainercolor,
              cardchild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'HEIGHT',
                    style: kTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: kNumberStyle,
                      ),
                      Text(
                        'cm',
                        style: kTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      thumbColor: Colors.yellowAccent,
                      inactiveTrackColor: Colors.grey,
                      activeTrackColor: Colors.yellowAccent,
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 10.0),
                      overlayColor: Colors.white24,
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 20.0),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120.0,
                      max: 240.0,
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                    child: ReusableCard(
                  colour: kcontainercolor,
                  cardchild: Column(
                    children: <Widget>[
                      Text(
                        'WEIGHT',
                        style: kTextStyle,
                      ),
                      Text(
                        weight.toString(),
                        style: kNumberStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RoundActionButton(
                            icon: FontAwesomeIcons.minus,
                            onPressed: () {
                              setState(() {
                                weight--;
                              });
                            },
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          RoundActionButton(
                            icon: FontAwesomeIcons.plus,
                            onPressed: () {
                              setState(() {
                                weight++;
                              });
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                )),
                Expanded(
                    child: ReusableCard(
                  colour: kcontainercolor,
                  cardchild: Column(
                    children: <Widget>[
                      Text(
                        'AGE',
                        style: kTextStyle,
                      ),
                      Text(
                        age.toString(),
                        style: kNumberStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RoundActionButton(
                            icon: FontAwesomeIcons.minus,
                            onPressed: () {
                              setState(() {
                                age--;
                              });
                            },
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          RoundActionButton(
                            icon: FontAwesomeIcons.plus,
                            onPressed: () {
                              setState(() {
                                age++;
                              });
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                )),
              ],
            ),
          ),
          Calculator(
            buttonTitle: 'Calculate',
            onPress: () {

              CalculatorBrain calc = CalculatorBrain(height: height, weight: weight);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ResultsPage(
                    score: calc.calculateBMI(),
                    bmiCategory: calc.getResult(),
                    suggestion: calc.getInterpretation(),
                  )));
            },
          ),
        ],
      ),
    );
  }
}
