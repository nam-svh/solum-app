import 'package:flutter/material.dart';
import 'package:solum_app/navigator/app_router.dart';

void main() {
  runApp(const CheckoutFeature());
}

class CheckoutFeature extends StatelessWidget {
  const CheckoutFeature({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      title: 'Solum App',
    );
  }
}
