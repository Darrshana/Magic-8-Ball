


import 'package:flutter/material.dart';
import 'package:magic_8_ball/ball.dart';
import 'package:magic_8_ball/welcome.dart';

void main() => runApp(MaterialApp(
  theme: ThemeData.dark(),
initialRoute: 'welcome',
  routes: {
    'ball':(context)=>BallPage(),
    'welcome':(context)=>WelcomePage()
  },
    ));

