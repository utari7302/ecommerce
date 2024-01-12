import 'package:ecommerce/screens/forgot_password/component/body.dart';
import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatelessWidget {
  static String routeName = "/forgot";
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Forgot Password")),
      ),
      body: const Body(),
    );
  }
}
