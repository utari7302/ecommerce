import 'package:ecommerce/screens/home/components/section_tilte.dart';
import 'package:ecommerce/screens/home/special_card.dart';
import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          text: "Special for you",
          press: () {},
        ),
        SizedBox(height: getProportionateScreenWidth(20),),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SpecialOfferCard(image: "assets/images/Image Banner 2.png",category: "Smartphones",numOfBrands: 18,press: () {

              },),
              SpecialOfferCard(image: "assets/images/Image Banner 3.png",category: "Fashion",numOfBrands: 18,press: () {

              },),
              SpecialOfferCard(image: "assets/images/Image Banner 2.png",category: "Smartphones",numOfBrands: 18,press: () {

              },),
              SpecialOfferCard(image: "assets/images/Image Banner 3.png",category: "Fashion",numOfBrands: 18,press: () {

              },),
            ],
          ),
        ),
      ],
    );
  }
}