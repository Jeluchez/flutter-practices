import 'package:flutter/material.dart';

class CircleProgress extends StatelessWidget {
   
  const CircleProgress({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.only(right: 7.0),
      alignment: Alignment.topCenter,
      child: Stack(
        children: <Widget>[
          SizedBox(
            width: 40,
            height: 40,
            child: Transform.rotate(
              angle: 320,
              child: const CircularProgressIndicator(
                backgroundColor:Color.fromARGB(255, 60, 70, 1),
                valueColor: AlwaysStoppedAnimation<Color>( Colors.white),
                value:1-(1/6)
              ),
            ),
          ),
          
          const Positioned(
            left: 8,
            top: 12,
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