import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';


class Calculator extends StatelessWidget {
  Calculator({@required this.onPress,this.buttonTitle });

  final Function onPress;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: Center(
          child: Text(buttonTitle,
            style: kContainerStyle,),
        ),
        color: Colors.yellowAccent,
        height: kBottomcontainerheight,
        width: double.infinity,
        margin: EdgeInsets.only(
          top: 10.0,
        ),

      ),
    );
  }
}

