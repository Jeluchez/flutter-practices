import 'dart:async';

import 'package:flutter/material.dart';

class OtpTimer extends StatefulWidget {

 
  
  const OtpTimer({Key? key,}) : super(key: key);

  @override
  _OtpTimerState createState() => _OtpTimerState();
}

class _OtpTimerState extends State<OtpTimer> {

  final interval = const Duration(seconds: 1);

  final int timerMaxSeconds = 300;
  final totalSeconds = 300;
  int currentSeconds = 0;

  String get timerText =>
      '${((timerMaxSeconds - currentSeconds) ~/ 60).toString().padLeft(2, '0')}: ${((timerMaxSeconds - currentSeconds) % 60).toString().padLeft(2, '0')}';

  startTimeout([int miliseconds=1000]) {
    var duration = interval;
   
    Timer.periodic(duration, (timer) {
      setState(() {
        // print(timer.tick);
        currentSeconds = timer.tick;
        if (timer.tick >= timerMaxSeconds) timer.cancel();
      });
    });
  }

  @override
  void initState() {
    startTimeout();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return RichText(
            text: TextSpan(
              style: const TextStyle(
                height: 1.5,
                color:Color.fromRGBO(76, 88, 102, 1),  
              ),
              children: <TextSpan>[
                const TextSpan(text: 'Tu código es válido por '),
                TextSpan(
                  text: timerText,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  )
                ),
              ]
            )
          );
  }
}