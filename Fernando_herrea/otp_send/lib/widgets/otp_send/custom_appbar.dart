import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  
  
  const CustomAppBar({Key? key}) : preferredSize = const Size.fromHeight(60.0), super(key: key);

  @override
  final Size preferredSize;

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar>{


  final Widget questionSVG = SvgPicture.asset('assets/images/question.svg');
  final Widget tigoSVG = SvgPicture.asset('assets/images/tigo_appbar.svg');

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox.shrink(),
          Container(
            margin: const EdgeInsets.only(left: 20.0),
            child : Image.asset('assets/images/tigo.png'),
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color.fromARGB(255, 255, 255, 255)
              ),
              borderRadius: BorderRadius.circular(5),
          ), 
          ),
          IconButton(
            icon: questionSVG,
            onPressed: () {}
          ) 
        ]
      ),
      backgroundColor: const Color.fromRGBO(255, 191, 14, 1),
      elevation: 0,
    );
  }
}