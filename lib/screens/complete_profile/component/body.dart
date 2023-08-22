import 'package:flutter/material.dart';
import 'package:shop_app/screens/complete_profile/component/complete_profile_form.dart';

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
              SizedBox(height: SizeConfig.screenHeight! * 0.03),
              Text(
                "Complete Profile",
                style: headingStyle,
              ),
              const Text(
                "Complete you details or continue \nwith social media.",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight! * 0.06),
              const CompleteProfileForm(),
              SizedBox(height: getProportionateScreenWidth(30)),
              const Text(
                "By continuing your confirm that you agree \nwith our term and condition",
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
