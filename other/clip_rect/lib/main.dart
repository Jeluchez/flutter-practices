import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: ClipRect(
          clipper: _ClipTop(),
          child: Container(
            color: Colors.red,
            width: 100,
            height: 200,
            child: Text('Hello World'),
          ),
        ),
      ),
    );
  }
}

class _ClipTop extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    var rect = Rect.fromLTWH(0, 20, 100, 100);
    return rect;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) => false;
}
