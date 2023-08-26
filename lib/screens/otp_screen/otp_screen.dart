import 'package:flutter/material.dart';
import 'package:shop_app/screens/otp_screen/component/body.dart';

class OtpScreen extends StatelessWidget {
  static String routeName = "/otp_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("OTP Verification"),
      ),
      body: const Body(),
    );
  }
}
