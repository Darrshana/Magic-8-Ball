import 'package:flutter/animation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:audioplayers/audio_cache.dart';
import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.indigo[600],
      appBar: AppBar(
        toolbarHeight: 75.0,
        title:  WavyAnimatedTextKit(text:['Ask Me Anything'],


            isRepeatingAnimation: true,
            textStyle: TextStyle(
                fontFamily: 'Lobster',
                fontSize: 30.0,
                color: Colors.white,
                fontWeight:FontWeight.bold)),
        backgroundColor: Colors.grey[850],
      ),
      body: Ball(),);
  }}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> with TickerProviderStateMixin{
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

              final player=AudioCache();
              player.play('note7.wav');
            },

            child:Image.asset('images/ball$imgNum.png')),
        ),

      ),
    );



  }
}