import 'package:checout_feature/main.dart';
import 'package:flutter/material.dart';
import 'package:product_feature/main.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({super.key});

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Checkout'),
      ),
      body: Row(
        children: [
          Expanded(
            child: ProductFeature(),
          ),
          Expanded(
            child: CheckoutApp()
          )
        ],
      ),
    );
  }
}