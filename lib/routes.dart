import 'package:flutter/material.dart';
import 'package:shop_app/screens/complete_profile/complete_profile_screen.dart';
import 'package:shop_app/screens/forgot_pasword/forgot_password_screen.dart';
import 'package:shop_app/screens/home/home_scree.dart';
import 'package:shop_app/screens/login_success/login_success_screen.dart';
import 'package:shop_app/screens/otp_screen/otp_screen.dart';
import 'package:shop_app/screens/sign_in/sign_in_screen.dart';
import 'package:shop_app/screens/sign_up/sign_up_scree.dart';
import 'package:shop_app/screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
};
