import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../../../size_config.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth! * 0.6,
      decoration: BoxDecoration(
        color: kSecondaryColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextField(
        onChanged: (value) {},
        decoration: InputDecoration(
          hintText: "Search Products",
          errorBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
            vertical: getProportionateScreenWidth(9),
          ),
          prefixIcon: const Icon(Icons.search),
        ),
      ),
    );
  }
}
