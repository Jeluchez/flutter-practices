import 'package:flutter/material.dart';
import 'package:otp_send/widgets/otp_send/otp_input.dart';
import 'package:otp_send/widgets/otp_send/otp_timer.dart';

class CheckingCode extends StatelessWidget {
   
  const CheckingCode({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
            height: 270,
            width: 335,
            margin: const EdgeInsets.fromLTRB(0, 22, 0, 0),
            padding:  const EdgeInsets.all(22),
            decoration: const BoxDecoration(
              color:  Color.fromARGB(255, 255, 255, 255),
              borderRadius:  BorderRadius.all(Radius.circular(30)),
              // border: Border.all(
              //   color:const Color.fromARGB(255, 255, 0, 0)
              // ),
              boxShadow:  [
                BoxShadow(
                  color: Color.fromARGB(17, 0, 0, 8),
                  offset: Offset(
                    0,
                    12
                  ),
                  blurRadius: 30.0,
                  spreadRadius: 10,
                )
              ]//BoxShadow
            ),
           
            child: Column(
              children: [
                  const OtpTimer(),
                  Container(
                    alignment: Alignment.topCenter,
                    width: screenWidth * 0.55,
                    margin: const EdgeInsets.all(20),
                    child: const ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      child:  LinearProgressIndicator(
                        minHeight:8,
                        value: 90/300,
                        backgroundColor: Color.fromRGBO(223, 227, 231, 1),
                        valueColor: AlwaysStoppedAnimation<Color>(Color.fromRGBO(255, 191, 14, 1),),
                      ),
                    )
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 24, 0, 0),
                    child: Row(
                    
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const[
                        OtpInput( true),
                        OtpInput( false),
                        OtpInput( false),
                        OtpInput( false),
                      ],
                    ),
                  ),

                  Padding(
                    padding:  const EdgeInsets.fromLTRB(0, 32, 0, 0),
                    child: RichText(
                      text: const TextSpan(
                        style: TextStyle(
                          height: 1.5,
                          color:Color.fromRGBO(76, 88, 102, 1),  
                        ),
                        children: <TextSpan>[
                          TextSpan(text: '¿No lo recibiste? '),
                          TextSpan(
                            text: 'Reenviar código', 
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            )
                          ),
                        ]
                      )
                    ),
                  ),
              ]
            )
    );
  }
}