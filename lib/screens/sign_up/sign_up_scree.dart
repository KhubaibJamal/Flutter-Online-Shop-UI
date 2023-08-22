import 'package:flutter/material.dart';
import 'package:shop_app/screens/sign_up/component/body.dart';

class SignUpScreen extends StatelessWidget {
  static String routeName = "/sign_up";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Sign Up"),
      ),
      body: const Body(),
    );
  }
}
