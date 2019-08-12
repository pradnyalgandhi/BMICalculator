import 'package:flutter/material.dart';


class Excercises extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EXCERCISES'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(child: Container(
            margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
            padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),

            child: Text('Eat Well, Sleep well and remember life is short.\n \nSo have your desserts first.',
              style: TextStyle(fontSize: 50.0,
                fontWeight: FontWeight.bold,
                color: Colors.yellowAccent),
            ),
          ))

        ],
      ),
    );
  }
}

