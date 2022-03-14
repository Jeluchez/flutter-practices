import 'package:flutter/material.dart';
import 'package:otp_send/widgets/otp_send/checking_code.dart';

class OtpSendBody extends StatelessWidget {
   
  const OtpSendBody({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Stack(
              children: [
                Positioned(
                  right: 0,
                  top: 0,
                  child: Container(
                    width: 48.0,
                    height: 100.0,
                    decoration:  const BoxDecoration(
                      color: Color.fromRGBO(255, 191, 14, 1),
                    ),
                    
                  ),
                ),
                Container(
                  decoration:  const BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.only(topRight: Radius.circular(32.0), )
                  ),
                  child: Column(
                    children:  [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(24, 33.5, 24, 0),
                        child: RichText(
                          text: const TextSpan(
                            style: TextStyle(
                              height: 1.5,
                              color:Color.fromRGBO(76, 88, 102, 1),  
                            ),
                            children: <TextSpan>[
                              TextSpan(text: 'Enviamos un código a tu celular '),
                              TextSpan(
                                text: '+52 ********17', 
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                )
                              ),
                              TextSpan(text: ', por favor ingrésalo para continuar.'),
                            ]
                          )
                        ), 
                      ), 
                      const  CheckingCode()
                    ],
                  ),
                ),
              
              ]
      );
  }
}