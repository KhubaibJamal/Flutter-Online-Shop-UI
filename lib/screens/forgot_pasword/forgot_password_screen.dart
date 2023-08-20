import 'package:flutter/material.dart';
import 'package:shop_app/screens/forgot_pasword/component/body.dart';

class ForgotPasswordScreen extends StatelessWidget {
  static String routeName = "forgot_password";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Forgot Password"),
      ),
      body: const Body(),
    );
  }
}
