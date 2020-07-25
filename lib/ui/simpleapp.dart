import 'package:flutter/material.dart';
import 'dart:math';

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Ask Me Anything'),
        backgroundColor: Colors.blue.shade800,
        leading: Icon(
          Icons.android,
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
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
