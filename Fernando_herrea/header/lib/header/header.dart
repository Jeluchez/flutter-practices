import 'package:custom_paint/header/custom_appbar.dart';
import 'package:custom_paint/header/header_content.dart';
import 'package:flutter/material.dart';


class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Row(
        children: [
          Expanded(
            child: ClipPath(
              clipper: HeaderCustomClipper(),
              child: Container(
                height:113.61,
                color: const Color.fromRGBO(255, 191, 14, 1),
                child: const HeaderContent()
              ),
            ), 
          ),
        ],
      ),
    );
  }
}

class HeaderCustomClipper extends CustomClipper<Path> {

  @override
  Path getClip(Size size) {
    var path = Path();
    var cwidth =33.31;

    path.lineTo(0.0, size.height - (cwidth*2));

    final firstControlPoint = Offset(0.0, size.height - cwidth);
    final firstEndPoint = Offset(cwidth, size.height - cwidth);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    path.lineTo(size.width-cwidth, size.height - cwidth);

    final secondControlPoint = Offset(size.width, size.height - cwidth);
    final secondEndPoint = Offset(size.width, size.height);

    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    path.lineTo(size.width, 0.0);
    path.lineTo(0.0, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}