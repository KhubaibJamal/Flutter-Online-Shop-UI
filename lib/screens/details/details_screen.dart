import 'package:flutter/material.dart';
import 'package:shop_app/models/product.dart';
import 'package:shop_app/screens/details/component/body.dart';

import 'component/custom_app_bar.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName = "details_screen";

  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ProductsDetailsArguments args =
        ModalRoute.of(context)!.settings.arguments as ProductsDetailsArguments;
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6F9),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: CustomAppBar(
          rating: args.product.rating,
        ),
      ),
      body: Body(product: args.product),
    );
  }
}

class ProductsDetailsArguments {
  final Product product;
  ProductsDetailsArguments({required this.product});
}
