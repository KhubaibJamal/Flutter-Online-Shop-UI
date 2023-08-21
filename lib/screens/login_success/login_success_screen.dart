import 'package:flutter/material.dart';
import 'package:shop_app/screens/login_success/component/body.dart';

class LoginSuccessScreen extends StatelessWidget {
  static String routeName = "login_success";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox(),
        centerTitle: true,
        title: const Text("Login Success"),
      ),
      body: const Body(),
    );
  }
}
