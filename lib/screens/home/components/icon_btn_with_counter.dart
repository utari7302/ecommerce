import 'package:ecommerce/constants.dart';
import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconBtnWithCounter extends StatelessWidget {
  const IconBtnWithCounter({super.key, required this.svgSrc, this.numOfItems = 0, required this.press});

  final String svgSrc;
  final int numOfItems;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      borderRadius: BorderRadius.circular(50),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            padding: EdgeInsets.all(getProportionateScreenWidth(12)),
            height: getProportionateScreenWidth(70),
            width: getProportionateScreenWidth(70),
            decoration: BoxDecoration(
                color: kSecondaryColor.withOpacity(0.1),
                shape: BoxShape.circle
            ),
            child: SvgPicture.asset(svgSrc),
          ),
          if(numOfItems != 0)
            Positioned(
            top: -6,
            right: 0,
            child: Container(
              height: getProportionateScreenWidth(30),
              width: getProportionateScreenWidth(30),
              decoration: BoxDecoration(
                  color: const Color(0xFFFF4848),
                  shape: BoxShape.circle,
                  border: Border.all(width: 1.5,color: Colors.white)
              ),
              child: Center(
                child: Text(
                  numOfItems.toString(),
                  style: TextStyle(
                      fontSize: getProportionateScreenWidth(20),
                      height: 1,
                      color: Colors.white,
                      fontWeight: FontWeight.w600
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
