import 'package:figma/data_widget.dart';
import 'package:figma/grid_widget.dart';
import 'package:figma/my_app_bar.dart';
import 'package:figma/three_buttons.dart';
import 'package:figma/widgets/button.dart';
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
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 6,
              ),
              margin: EdgeInsets.only(bottom: 8),
              child: GridWidget(),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 8),
              decoration: BoxDecoration(
                color: Color.fromRGBO(246, 247, 249, 1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: ThreeButtons(),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 8),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    // flex: 1,
                    fit: FlexFit.tight,
                    child: Button(
                      buttonColor: Color.fromRGBO(74, 114, 255, 1),
                      buttonTitle: 'Добавить',
                      buttonIcon: 'assets/icons/plus.svg',
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Flexible(
                    //flex: 1,
                    fit: FlexFit.tight,
                    child: Button(
                      buttonColor: Color.fromRGBO(29, 180, 105, 1),
                      buttonTitle: 'Продать',
                      buttonIcon: 'assets/icons/package-plus.svg',
                    ),
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
