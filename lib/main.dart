import 'package:flutter/material.dart';
import 'package:shop_app/constant.dart';
import 'package:shop_app/routes.dart';
import 'package:shop_app/screens/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shop app',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: kTextColor),
          bodyMedium: TextStyle(color: kTextColor),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // home: const SplashScreen(),
      initialRoute: SplashScreen.routeName, routes: routes,
    );
  }
}
