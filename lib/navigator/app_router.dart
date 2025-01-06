import 'package:checout_feature/routes/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:product_feature/navigator/app_router.dart';
import 'package:share_models/modes/checkout_infor.dart';

import '../screens/checkout_page.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: '/product',
    routes: [
      GoRoute(
        path: '/checkout',
        builder: (context, state){
          final checkoutInfor = state.extra as CheckoutInfor;
          return CheckoutPage(checkoutInfor: checkoutInfor);
        },
      ),
       ...ProductRouter.routes, ///  Imported routes from product feature
       ...CheckoutRouter.routes, ///  Imported routes from checkout feature
    ],
  );
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Solum App')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () => context.go('/product'),
              child: const Text('Go to Product'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () => context.go('/checkout'),
              child: const Text('Go to Checkout'),
            ),
          ),
        ],
      ),
    );
  }
}
