import 'package:flutter/material.dart';
import 'package:shop_app/models/product.dart';
import 'package:shop_app/screens/home/component/section_title.dart';
import '../../../components/product_card.dart';
import '../../../size_config.dart';

class PopularProduct extends StatelessWidget {
  const PopularProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SectionTitle(title: "Popular Products", press: () {}),
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              demoProducts.length,
              (index) {
                if (demoProducts[index].isPopular) {
                  return ProductCard(
                    product: demoProducts[index],
                  );
                }
                return SizedBox(width: getProportionateScreenWidth(20));
              },
            ),
          ),
        ),
      ],
    );
  }
}
