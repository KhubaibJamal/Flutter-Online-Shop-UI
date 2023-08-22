import 'package:flutter/material.dart';
import 'package:shop_app/screens/otp_screen/component/otp_form.dart';

import '../../../constant.dart';
import '../../../size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight! * 0.05),
              Text(
                "OTP Verification",
                style: headingStyle,
              ),
              const Text(
                "We sent your code to +92 333298***",
                textAlign: TextAlign.center,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("This code will expire in "),
                  TweenAnimationBuilder(
                    tween: Tween(begin: 30.0, end: 0.0),
                    duration: const Duration(seconds: 30),
                    builder: (context, value, child) {
                      return Text(
                        "00:${value.toInt()}",
                        style: const TextStyle(
                          color: kPrimaryColor,
                        ),
                      );
                    },
                    onEnd: () {},
                  ),
                ],
              ),
              SizedBox(height: SizeConfig.screenHeight! * 0.15),
              const OtpForm(),
              SizedBox(height: SizeConfig.screenHeight! * 0.1),
              GestureDetector(
                onTap: () {},
                child: const Text(
                  "Resend OTP code",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
