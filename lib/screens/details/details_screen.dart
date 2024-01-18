import 'package:ecommerce/components/custom_app_bar.dart';
import 'package:ecommerce/models/Product.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/screens/details/component/body.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  static String routeName = "/details";

  @override
  Widget build(BuildContext context) {
    final ProductDetailsArguments? arguments =
        ModalRoute.of(context)?.settings.arguments as ProductDetailsArguments?;
    return Scaffold(
        backgroundColor: const Color(0xFFF5F6F9),
        appBar: CustomAppBar(
          rating: arguments!.product.rating,
          preferredSize: const Size.fromHeight(120),
          child: const Text(''),
        ),
      body: const Body(),
    );
  }
}

class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments({required this.product});
}
