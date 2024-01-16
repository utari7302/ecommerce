import 'package:ecommerce/screens/home/components/icon_btn_with_counter.dart';
import 'package:ecommerce/screens/home/components/search_field.dart';
import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SearchField(),
          IconBtnWithCounter(
            press: () {},
            svgSrc: "assets/icons/Cart Icon.svg",
          ),
          IconBtnWithCounter(
            press: () {},
            svgSrc: "assets/icons/Bell.svg",
            numOfItems: 3,
          )
        ],
      ),
    );
  }
}