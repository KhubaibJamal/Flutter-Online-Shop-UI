import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constant.dart';

class ProfileMenu extends StatelessWidget {
  final String icon, text;
  final VoidCallback press;
  const ProfileMenu({
    super.key,
    required this.icon,
    required this.text,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextButton(
        style: TextButton.styleFrom(
          foregroundColor: kPrimaryColor,
          backgroundColor: const Color(0xFFF5F6F9),
          padding: const EdgeInsets.all(20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        onPressed: press,
        child: Row(
          children: [
            SvgPicture.asset(
              icon,
              colorFilter: const ColorFilter.mode(
                kPrimaryColor,
                BlendMode.srcIn,
              ),
              width: 22,
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Text(
                text,
                style: const TextStyle(
                  fontSize: 16,
                  color: kTextColor,
                ),
              ),
            ),
            const Icon(
              Icons.arrow_forward_ios,
              color: kTextColor,
            ),
          ],
        ),
      ),
    );
  }
}
