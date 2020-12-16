import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:animatedroute/animatedroute.dart';
import  'package:flutter/src/painting/gradient.dart';
import 'package:flutter_sinusoidals/flutter_sinusoidals.dart';
import 'ball.dart';
class WelcomePage extends StatelessWidget {
  static const String id = 'welcome';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      body: Welcome(),
    );
  }
}

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> with TickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    const _colors = [
      Colors.indigo,
      Colors.deepPurple,
      Colors.indigo,

    ];
    const _amplitude = 30.0;
     const _waves = 2.0;
     const _height = 85.0;
    return Container(
           margin: const EdgeInsets.only(top: 170.0),


            child:Center(child:Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [

               Center(

                  child: ColorizeAnimatedTextKit(
                text: ['Magic 8 Ball'],
                textStyle: TextStyle(fontSize: 70.0, fontFamily: "Lobster"),
                colors: [
                  Colors.purple,
                  Colors.blue,
                  Colors.yellow,
                  Colors.red,
                ],

               repeatForever: true,
              )),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TypewriterAnimatedTextKit(
                text:['Unable to decide?Need answer for a tricky question?','Just have the question in mind and press the button.',
                  'Trust the ball!!'],textStyle: TextStyle(
                  fontSize: 25.0,
                  fontFamily: "Lobster"
              ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:50.0),
              child: FloatingActionButton(child:Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('GO',style:TextStyle(fontWeight: FontWeight.bold),),
              ),tooltip: 'GO',foregroundColor: Colors.white,backgroundColor:Colors.indigo[600],onPressed: (){
                //Navigator.pushNamed(context,'ball');
                Navigator.of(context).push(AnimatedRoute(widget:BallPage(), curves: Curves.easeInOutCubic, alignment: Alignment.bottomCenter));
              },),
            ),
              MagmaWave(
                child: Container(
                  height: 200,
                  color: Colors.indigo,
                ),
              ),




      ],),

            ));

  }
}
