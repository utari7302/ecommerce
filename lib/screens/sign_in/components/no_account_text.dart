import 'package:ecommerce/constants.dart';
import 'package:ecommerce/screens/sign_up/sign_up_screen.dart';
import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account?",
          style: TextStyle(fontSize: getProportionateScreenWidth(26)),
        ),
        GestureDetector(
            onTap: () => Navigator.pushNamed(context, SignUpScreen.routName),
            child: Text(
              "Sign Up",
              style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: getProportionateScreenWidth(26)),
            )),
      ],
    );
  }
}
