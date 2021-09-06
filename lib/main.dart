import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          title: Center(
            child: Text('Ball'),
          ),
        ),
        body: BallPage(),
      ),
    ),
  );
}

class BallPage extends StatefulWidget {
  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {

  int ballValue = Random().nextInt(5) + 1;

  void changeBallFace() {
    setState(() {
      ballValue = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                onPressed: () {
                  changeBallFace();
                },
                child: Image(
                  image: AssetImage("images/ball$ballValue.png"),
                ),
              ),
            ),
            flex: 1,
          ),
          
        ],
      ),
    );
  }
}
