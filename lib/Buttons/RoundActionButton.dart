import 'package:flutter/material.dart';

class RoundActionButton extends StatelessWidget {
  RoundActionButton({@required this.icon, @required this.onPressed});

  final IconData icon;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      child: Icon(
        icon,
        color: Colors.black,
      ),
      shape: CircleBorder(),
      fillColor: Colors.yellowAccent,
      constraints: BoxConstraints.tightFor(
        width: 48.0,
        height: 48.0,
      ),
      elevation: 6.0,
    );
  }
}
