import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app/models/product.dart';

import '../constant.dart';
import '../size_config.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    this.width = 140,
    this.aspectRation = 1.02,
    required this.product,
  });

  final double width, aspectRation;
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: SizedBox(
        width: getProportionateScreenWidth(width),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: aspectRation,
              child: Container(
                padding: EdgeInsets.all(getProportionateScreenWidth(20)),
                decoration: BoxDecoration(
                  color: kSecondaryColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image.asset(product.images[0]),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              product.title,
              maxLines: 2,
              style: const TextStyle(color: Colors.black),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  product.price.toString(),
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: getProportionateScreenWidth(18),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                InkWell(
                  borderRadius: BorderRadius.circular(50),
                  onTap: () {},
                  child: Container(
                    height: getProportionateScreenWidth(28),
                    width: getProportionateScreenWidth(28),
                    padding: EdgeInsets.all(getProportionateScreenWidth(8)),
                    decoration: BoxDecoration(
                      color: product.isFavorite
                          ? kPrimaryColor.withOpacity(0.15)
                          : kSecondaryColor.withOpacity(0.1),
                      shape: BoxShape.circle,
                    ),
                    child: SvgPicture.asset(
                      "assets/icons/Heart Icon_2.svg",
                      color: product.isFavorite
                          ? const Color(0xFFFF4848)
                          : const Color(0xFFDBDEE4),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
