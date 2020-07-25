import 'package:flutter/material.dart';
import 'dart:math';

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;
  List colorss = [
    Colors.red,
    Colors.blue,
    Colors.grey,
    Colors.amber,
    Colors.teal
  ];
  // ignore: non_constant_identifier_names
  int x_col = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorss[x_col],
      appBar: AppBar(
        title: Text('Ask Me Anything'),
        backgroundColor: Colors.blue.shade800,
        leading: IconButton(
          icon: Icon(
            Icons.android,
          ),
          onPressed: () {
            setState(() {
              x_col = Random().nextInt(4);
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
