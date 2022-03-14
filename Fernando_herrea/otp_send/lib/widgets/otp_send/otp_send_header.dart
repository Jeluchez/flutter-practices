import 'package:flutter/material.dart';
import 'package:otp_send/widgets/widgets.dart';

class OtpSendHeader extends StatelessWidget {
   
  const OtpSendHeader({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Container(
              decoration:  const BoxDecoration(
                color: Color.fromRGBO(255, 191, 14, 1),
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(32.0), )
              ),


              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(44, 0, 0, 0),
                    //  margin: const EdgeInsets.only(left: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const[
                        Text('Número de telefono',
                          style: TextStyle(color:Color.fromRGBO(52, 60, 70, 1), fontWeight: FontWeight.bold),
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