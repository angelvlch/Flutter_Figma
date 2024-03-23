import 'package:figma/pages/main_screen.dart/mainscreen.dart';
import 'package:figma/pages/proof_payment/proof_payment_screen.dart';
import 'package:figma/pages/select_product/select_product_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}
