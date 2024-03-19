import 'package:figma/data_widget.dart';
import 'package:figma/grid_widget.dart';
import 'package:figma/my_app_bar.dart';
import 'package:figma/three_buttons.dart';
import 'package:figma/widgets/add_button.dart';
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
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 14, vertical: 0),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 2,
              ),
              child: DataWidget(),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                vertical: 6,
              ),
              child: GridWidget(),
            ),
            Container(
              color: Color.fromRGBO(246, 247, 249, 1), // добавить отступы
              child: ThreeButtons(),
            ),
            Container(
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AddButton(
                    buttonColor: Color.fromRGBO(74, 114, 255, 1),
                    buttonTitle: 'Добавить',
                    buttonIcon: 'assets/icons/plus.svg',
                  ),
                  AddButton(
                    buttonColor: Color.fromRGBO(29, 180, 105, 1),
                    buttonTitle: 'Продать',
                    buttonIcon: 'assets/icons/package-plus.svg',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
