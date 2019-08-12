import 'package:flutter/material.dart';

class MaleFemale extends StatelessWidget {
  MaleFemale({this.gender, this.type});

  final IconData gender;
  final String type;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          gender,
          size: 60.0,
          color: Colors.yellowAccent,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          type,
          style: TextStyle(
            fontSize: 25.0,
            color: Colors.yellowAccent,
          ),
        ),
      ],
    );
  }
}