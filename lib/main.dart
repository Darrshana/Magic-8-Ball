

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:math';
void main() => runApp(MaterialApp(
      home: BallPage(),
    ));
class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.indigo[600],
        appBar: AppBar(
        title: Center(child: Text('Ask Me Anything',style: TextStyle(
            fontFamily: 'Lobster',
            color: Colors.white,
        fontWeight:FontWeight.bold)),),
    backgroundColor: Colors.grey[850],
    ),
    body: Ball(),);
}}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int imgNum=1;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child:
              Center(child: FlatButton(
                onPressed: (){
                setState(() {
                  imgNum=Random().nextInt(5) + 1;
                });
                },
                child: Image.asset('images/ball$imgNum.png'),
              ),
              ),
        ),
      );

  }
}
