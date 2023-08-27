import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../../../models/cart.dart';
import '../../../size_config.dart';

class CartItemCard extends StatelessWidget {
  final Cart cart;
  const CartItemCard({
    super.key,
    required this.cart,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 88,
          child: AspectRatio(
            aspectRatio: 0.88,
            child: Container(
              padding: EdgeInsets.all(getProportionateScreenWidth(10)),
              decoration: BoxDecoration(
                color: const Color(0xFFF5F6F9),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(cart.product.images[0]),
            ),
          ),
        ),
        const SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              cart.product.title,
              maxLines: 2,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 10),
            Text.rich(
              TextSpan(
                text: "\$${cart.product.price}",
                style: const TextStyle(color: kPrimaryColor),
                children: [
                  TextSpan(
                    text: " x${cart.numOfItem}",
                    style: const TextStyle(
                      color: kTextColor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
