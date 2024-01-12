import 'package:ecommerce/constants.dart';
import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';

class SplashContent extends StatelessWidget {
  final String text, image;
  const SplashContent({
    super.key, required this.text, required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Text(
          "TOKOTO",
          style: TextStyle(
              fontSize: getProportionateScreenWidth(36),
              color: kPrimaryColor,
              fontWeight: FontWeight.bold),
        ),
        Text(text,textAlign: TextAlign.center,),
        const Spacer(flex: 2,),
        Image.asset(
          image,
          fit: BoxFit.contain,
          height: getProportionateScreenHeight(265),
        )
      ],
    );
  }
}
