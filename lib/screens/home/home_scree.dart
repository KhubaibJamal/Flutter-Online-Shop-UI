import 'package:flutter/material.dart';
import 'package:shop_app/screens/home/component/body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "home_screen";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
    );
  }
}
