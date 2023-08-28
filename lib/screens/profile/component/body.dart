import 'package:flutter/material.dart';
import 'package:shop_app/screens/profile/component/profile_image.dart';
import 'package:shop_app/screens/profile/component/profile_menu.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ProfileImage(),
        const SizedBox(height: 20),
        ProfileMenu(
          icon: 'assets/icons/User Icon.svg',
          text: "My Account",
          press: () {},
        ),
        ProfileMenu(
          icon: 'assets/icons/Bell.svg',
          text: "Notifications",
          press: () {},
        ),
        ProfileMenu(
          icon: 'assets/icons/Settings.svg',
          text: "Settings",
          press: () {},
        ),
        ProfileMenu(
          icon: 'assets/icons/Question mark.svg',
          text: "Help Center",
          press: () {},
        ),
        ProfileMenu(
          icon: 'assets/icons/Log out.svg',
          text: "Log out",
          press: () {},
        ),
      ],
    );
  }
}
