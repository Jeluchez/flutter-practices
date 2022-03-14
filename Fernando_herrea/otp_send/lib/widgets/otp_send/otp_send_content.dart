import 'package:flutter/material.dart';
import 'package:otp_send/widgets/otp_send/otp_send_body.dart';
import 'package:otp_send/widgets/otp_send/otp_send_header.dart';

class OtpSendContent extends StatelessWidget {
   
  const OtpSendContent({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Column(
        children: const [
          OtpSendHeader(),
          OtpSendBody()
        ],
    );
  }
}