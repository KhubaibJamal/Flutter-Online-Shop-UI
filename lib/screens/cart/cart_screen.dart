import 'package:flutter/material.dart';
import 'package:shop_app/screens/cart/component/body.dart';
import '../../models/cart.dart';
import 'component/checkout_card.dart';

class CartScreen extends StatelessWidget {
  static String routeName = "/cart";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: const Body(),
      bottomNavigationBar: const CheckoutCard(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Column(
        children: [
          const Text(
            "Your Cart",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          Text(
            "${demoCarts.length} items",
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
