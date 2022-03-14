import 'package:flutter/material.dart';
import 'package:otp_send/widgets/widgets.dart';

class OtpSendScreen extends StatelessWidget {
   
  const OtpSendScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      appBar: CustomAppBar(),
      body: OtpSendContent(),
    );
  }
}