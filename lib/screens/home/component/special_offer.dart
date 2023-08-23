import 'package:flutter/material.dart';
import 'package:shop_app/screens/home/component/section_title.dart';

import '../../../size_config.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(title: "Special for you", press: () {}),
        const SizedBox(height: 5),
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              const SpecialOfferCard(
                category: "Smart Phone",
                image: "assets/images/Image Banner 2.png",
                numOfBrands: 18,
              ),
              const SpecialOfferCard(
                category: "Fashion",
                image: "assets/images/Image Banner 3.png",
                numOfBrands: 24,
              ),
              SizedBox(width: getProportionateScreenWidth(20)),
            ],
          ),
        )
      ],
    );
  }
}

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({
    super.key,
    required this.category,
    required this.image,
    required this.numOfBrands,
  });
  final String category, image;
  final int numOfBrands;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: SizedBox(
        width: getProportionateScreenWidth(242),
        height: getProportionateScreenWidth(100),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Stack(
            children: [
              Image.asset(
                image,
                fit: BoxFit.cover,
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      const Color(0xFF343434).withOpacity(0.4),
                      const Color(0xFF343434).withOpacity(0.15),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(15),
                  vertical: getProportionateScreenWidth(10),
                ),
                child: Text.rich(
                  TextSpan(
                    style: const TextStyle(color: Colors.white),
                    children: [
                      TextSpan(
                        text: "$category\n",
                        style: TextStyle(
                          fontSize: getProportionateScreenWidth(18),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(text: "$numOfBrands Brands")
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
