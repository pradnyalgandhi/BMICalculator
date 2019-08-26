import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class IndividualSet extends StatelessWidget {
  IndividualSet({@required this.title, this.excercise1,this.excercise2, this.excercise3});

  final String title;
  final String excercise1;
  final String excercise2;
  final String excercise3;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
        padding:EdgeInsets.only(left: 10.0,right: 10.0,top: 0.0,bottom: 0.0) ,
        color: Colors.blueGrey[900],
        child: Column( mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(title,style: kExcercisesSet,),
            Divider(
              color: Colors.white,
             height: 20.0,
           ),
            Text(excercise1,style: kExcercisestyle,),
            Text(excercise2,style: kExcercisestyle,),
            Text(excercise3,style: kExcercisestyle,),

          ],
        )
        
      ),

    );
  }
}