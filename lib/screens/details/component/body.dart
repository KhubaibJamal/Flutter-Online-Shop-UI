import 'package:flutter/material.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/models/product.dart';
import 'package:shop_app/screens/details/component/product_description.dart';
import 'package:shop_app/screens/details/component/product_image.dart';
import 'package:shop_app/screens/details/component/top_rounded_container.dart';
import '../../../size_config.dart';
import 'color_dots.dart';

class Body extends StatefulWidget {
  final Product product;
  const Body({super.key, required this.product});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ProductImage(product: widget.product),
        ProductDescription(
          product: widget.product,
        ),
        TopRoundedContainer(
          color: const Color(0xFFF6F7F9),
          child: Column(
            children: [
              ColorDots(product: widget.product),
              TopRoundedContainer(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: SizeConfig.screenWidth! * 0.15,
                    right: SizeConfig.screenWidth! * 0.15,
                    bottom: getProportionateScreenWidth(40),
                    top: getProportionateScreenWidth(15),
                  ),
                  child: DefaultButton(
                    text: "Add to Cart",
                    press: () {},
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
