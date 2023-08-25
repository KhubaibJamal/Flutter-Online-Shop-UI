import 'package:flutter/material.dart';

import '../../../components/rounded_btn_icon.dart';
import '../../../constant.dart';
import '../../../models/product.dart';
import '../../../size_config.dart';

class ColorDots extends StatelessWidget {
  final Product product;
  const ColorDots({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    int selectedColor = 3;
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        children: [
          ...List.generate(
            product.colors.length,
            (index) => ColorDotContainer(
              color: product.colors[index],
              isSelected: index == selectedColor,
            ),
          ),
          const Spacer(),
          RoundedBtnIcon(icon: Icons.remove, press: () {}),
          SizedBox(width: getProportionateScreenWidth(20)),
          RoundedBtnIcon(icon: Icons.add, press: () {}),
        ],
      ),
    );
  }
}

class ColorDotContainer extends StatelessWidget {
  const ColorDotContainer({
    super.key,
    required this.color,
    this.isSelected = false,
  });

  final Color color;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 2),
      padding: EdgeInsets.all(getProportionateScreenWidth(8)),
      height: getProportionateScreenWidth(40),
      width: getProportionateScreenWidth(40),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.transparent,
        border: Border.all(
          color: isSelected ? kPrimaryColor : Colors.transparent,
        ),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
        ),
      ),
    );
  }
}
