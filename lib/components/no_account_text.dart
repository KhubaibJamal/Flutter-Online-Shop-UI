import 'package:flutter/material.dart';

import '../constant.dart';
import '../size_config.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account? ",
          style: TextStyle(
            fontSize: getProportionateScreenHeight(16),
          ),
        ),
        Text(
          "Sign up",
          style: TextStyle(
            fontSize: getProportionateScreenHeight(16),
            color: kPrimaryColor,
          ),
        ),
      ],
    );
  }
}
