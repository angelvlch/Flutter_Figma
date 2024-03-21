import 'package:figma/configs/routes.dart';
import 'package:figma/pages/main_screen.dart/mainscreen.dart';
import 'package:figma/pages/select_product/select_product_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  Map<String, WidgetBuilder> get _routes {
    return {
      Routes.mainScreen: (context) => const SelectProductScreen(),
    };
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: _routes,
    );
  }
}
