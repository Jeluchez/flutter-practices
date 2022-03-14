import 'package:flutter/material.dart';

class CircleProgress extends StatelessWidget {
   
  const CircleProgress({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Container(
              margin: const EdgeInsets.only(bottom: 20.0,top: 20),
              padding: const EdgeInsets.only(right: 7.0),
              alignment: Alignment.topCenter,
              child: Stack(
                children: <Widget>[
                  Transform.rotate(
                    angle: 320,
                    child: const CircularProgressIndicator(
                      backgroundColor:Color.fromARGB(255, 60, 70, 1),
                      valueColor: AlwaysStoppedAnimation<Color>( Colors.white),
                      value:1-(1/6)
                    ),
                  ),
                  
                 const Positioned(
                    left: 6,
                    top: 10,
                    child: Text(
                      "1/6",
                      style:TextStyle(
                        color: Color.fromARGB(255, 60, 70, 1),
                        fontWeight: FontWeight.bold),
                    ),
                 )
                ]
              )
            );
  }
}