import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(home: BallPage()),
    );

class Ball extends StatefulWidget {
  const Ball({Key key}) : super(key: key);

  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;

  void rollBall() {
    ballNumber = Random().nextInt(4) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Expanded(
        child: TextButton(
            onPressed: () {
              setState(() {
                rollBall();
              });
            },
            child: Image.asset('images/ball$ballNumber.png')),
      ),
    );
  }
}

class BallPage extends StatelessWidget {
  const BallPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Ask me anything'),
      ),
      body: Ball(),
    );
  }
}
