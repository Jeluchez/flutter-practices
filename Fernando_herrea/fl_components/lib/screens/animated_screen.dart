import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
   
  const AnimatedScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {

  double _height=50;
  double _width=50;
  Color _color= Colors.deepPurple;
    BorderRadiusGeometry _borderRadius = BorderRadius.circular(10);

  void HandleChangeShape(){
    var random = Random();
    _height=random.nextInt(300).toDouble() + 70;
    _width=random.nextInt(300).toDouble() + 70;
    _color = Color.fromRGBO(random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);
    _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble()+10);

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated container'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          curve: Curves.elasticInOut,
          height: _height,
          width: _width,
          decoration: BoxDecoration(
            borderRadius: _borderRadius,
            color: _color
          ), 
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.play_circle_outline,size:35),
        onPressed: () => HandleChangeShape(),
      ),
    );
  }
}