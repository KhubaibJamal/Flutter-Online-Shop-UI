import 'package:flutter/material.dart';

import '../size_config.dart';

class RoundedBtnIcon extends StatelessWidget {
  final IconData icon;
  final GestureTapCallback press;
  const RoundedBtnIcon({
    super.key,
    required this.icon,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenWidth(40),
      width: getProportionateScreenWidth(40),
      child: TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
          iconColor: Colors.black,
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        onPressed: press,
        child: Icon(icon),
      ),
    );
  }
}
