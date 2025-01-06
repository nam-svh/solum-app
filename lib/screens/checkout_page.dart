import 'package:checout_feature/screens/checkout_screen.dart';
import 'package:flutter/material.dart';
import 'package:product_feature/screens/category_screen.dart';
import 'package:share_models/modes/checkout_infor.dart';

class CheckoutPage extends StatelessWidget {
  final CheckoutInfor checkoutInfor;
  const CheckoutPage({super.key, required this.checkoutInfor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main app'),
      ),
      body: Row(
        children: [
          Expanded(
            child: CategoryScreen(fromCheckOutScreen: true),
          ),
          Expanded(child: CheckOutScreen(checkoutInfor: checkoutInfor))
        ],
      ),
    );
  }
}
