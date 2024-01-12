
import 'package:ecommerce/screens/success_screen/component/body.dart';
import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});
  static String routeName = "/success";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox(),
        title: const Center(child: Text('Login Success')),
      ),
      body: const Body(),
    );
  }
}
