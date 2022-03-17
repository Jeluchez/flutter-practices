import 'package:custom_paint/header/circle_progress.dart';
import 'package:flutter/material.dart';

class HeaderContent extends StatelessWidget {
   
  const HeaderContent({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top:15.31),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 44, top: 2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const[
                Text('Número de telefono',
                  style: TextStyle(
                    color:Color.fromRGBO(52, 60, 70, 1),
                    fontWeight: FontWeight.bold,
                    fontSize: 16),

                ),
                Text('Siguiente correo electrónico',
                  style: TextStyle(
                    fontSize:12, 
                    color:Color.fromRGBO(76, 88, 102, 1),
                    height: 1.5 
                  ),
                )
              ],
            ),
          ),
          const Padding(
            padding:  EdgeInsets.fromLTRB(0, 0, 15, 0),
            child: CircleProgress()
          )
        ]
      ),
    );
  }
}