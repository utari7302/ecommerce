import 'package:ecommerce/screens/otp/components/body.dart';
import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});
  static String routeName = "/otpScreen";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("OTP Verification")),
      ),
      body: const Body(),
    );
  }
}
