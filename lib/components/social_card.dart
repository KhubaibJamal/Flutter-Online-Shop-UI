import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app/size_config.dart';

class SocialCard extends StatelessWidget {
  final String svgIcon;
  final VoidCallback press;
  const SocialCard({
    super.key,
    required this.svgIcon,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: getProportionateScreenWidth(40),
        height: getProportionateScreenHeight(40),
        padding: EdgeInsets.all(getProportionateScreenHeight(12)),
        margin:
            EdgeInsets.symmetric(horizontal: getProportionateScreenHeight(10)),
        decoration: const BoxDecoration(
          color: Color(0xFFF5F6F9),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(
          svgIcon,
        ),
      ),
    );
  }
}
