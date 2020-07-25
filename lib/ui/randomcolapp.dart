import 'package:flutter/material.dart';
import 'dart:math';

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;
  var colors = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors,
      appBar: AppBar(
        title: Text('Ask Me Anything'),
        backgroundColor: Colors.blue.shade800,
        leading: IconButton(
          icon: Icon(
            Icons.android,
          ),
          onPressed: () {
            setState(() {
              colors =
                  Colors.primaries[Random().nextInt(Colors.primaries.length)];
            });
          },
        ),
        actions: <Widget>[
          Icon(
            Icons.mail,
          ),
          SizedBox(
            width: 15.0,
          ),
          Icon(
            Icons.help,
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: FlatButton(
              child: Image.asset(
                'images/ball$ballNumber.png',
              ),
              onPressed: () {
                setState(() {
                  ballNumber = Random().nextInt(5) + 1;
                  //print(ballNumber);
                });
              },
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            child: Text(
              'Thank You!',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
