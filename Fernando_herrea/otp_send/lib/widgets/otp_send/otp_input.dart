import 'package:flutter/material.dart';

class OtpInput extends StatelessWidget {

  // final TextEditingController controller;
  final bool autoFocus;
  // const OtpInput(this.controller, this.autoFocus, {Key? key}) : super(key: key);
  const OtpInput(this.autoFocus, {Key? key}) : super(key: key);
  
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64,
      width: 51,
      child: TextField(
        autofocus: autoFocus,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        // controller: controller,
        maxLength: 1,
        cursorColor: const Color.fromRGBO(255, 191, 14, 1),
        decoration:  InputDecoration(
          border: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color.fromRGBO(41, 70, 95, 0.4),
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          counterText: '',
          hintStyle: const TextStyle(color: Colors.black, fontSize: 20.0),
          focusedBorder:OutlineInputBorder(
            borderSide: const BorderSide(color: Color.fromRGBO(255, 191, 14, 1), width: 1.0),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
      ),
    );
  }
}