import 'package:flutter/material.dart';
import 'package:shop_app/screens/complete_profile/component/body.dart';

class CompleteProfileScreen extends StatelessWidget {
  static String routeName = "complete_profile";

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
