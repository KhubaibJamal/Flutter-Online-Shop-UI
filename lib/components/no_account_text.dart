import 'package:flutter/material.dart';
import 'package:shop_app/screens/sign_up/sign_up_scree.dart';

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
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, SignUpScreen.routeName);
          },
          child: Text(
            "Sign up",
            style: TextStyle(
              fontSize: getProportionateScreenHeight(16),
              color: kPrimaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
