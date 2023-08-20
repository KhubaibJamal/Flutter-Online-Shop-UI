import 'package:flutter/material.dart';

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

// form errors
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\[a-zA-Z]+");
const kEmailNullError = "Please Enter your Email";
const kInvalidEmailError = "Please Enter  Valid Email";
const kPasswordNullError = "Please Enter your Password";
const kShortPassError = "Password is too short";
const kMatchPasswordError = "Password don't match";
