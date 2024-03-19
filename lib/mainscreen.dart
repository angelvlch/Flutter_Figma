import 'package:figma/data_widget.dart';
import 'package:figma/grid_widget.dart';
import 'package:figma/my_app_bar.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.green,
        title: MyAppBar(),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 14, vertical: 8),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 2,
              ),
              child: DataWidget(),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 6,
              ),
              child: GridWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
