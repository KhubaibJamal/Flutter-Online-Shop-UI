import 'package:flutter/material.dart';
import 'package:shop_app/size_config.dart';

const kPrimaryColor = Color(0xffff7643);
const kPrimaryLightColor = Color(0xffffecdf);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xffffa53e), Color(0xffff7643)],
);
const kSecondaryColor = Color(0xff979797);
const kTextColor = Color(0xff757575);
const kAnimationDuration = Duration(milliseconds: 200);

// heading style
final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

// form errors
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\[a-zA-Z]+");
const kEmailNullError = "Please Enter your Email";
const kInvalidEmailError = "Please Enter  Valid Email";
const kPasswordNullError = "Please Enter your Password";
const kShortPassError = "Password is too short";
const kMatchPasswordError = "Password don't match";
const kNameNullError = "Please Enter your Name";
const kPhoneNumberNullError = "Please Enter your phone number";
const kAddressNullError = "Please Enter your address";

// otp text field decoration
final otpInputDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(
    vertical: getProportionateScreenWidth(15),
  ),
  border: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
    borderSide: const BorderSide(
      color: kTextColor,
    ),
  );
}
