import 'package:flutter/material.dart';
import 'package:shop_app/screens/cart/cart_screen.dart';
import 'package:shop_app/screens/home/component/search_field.dart';

import '../../../size_config.dart';
import 'icon_button_with_counter.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SearchField(),
          IconButtonWithCounter(
            svgSrc: "assets/icons/Cart Icon.svg",
            press: () {
              Navigator.pushNamed(context, CartScreen.routeName);
            },
          ),
          IconButtonWithCounter(
            svgSrc: "assets/icons/Bell.svg",
            numOfItem: 3,
            press: () {},
          ),
        ],
      ),
    );
  }
}
