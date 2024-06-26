import 'package:figma/pages/main_screen.dart/data_widget.dart';
import 'package:figma/pages/main_screen.dart/grid_widget.dart';
import 'package:figma/pages/main_screen.dart/my_app_bar.dart';
import 'package:figma/pages/main_screen.dart/three_buttons.dart';

import 'package:figma/pages/main_screen.dart/widgets/button.dart';

import 'package:figma/pages/select_product/select_product_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
        title: const MyAppBar(),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 0),
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
              padding: const EdgeInsets.symmetric(
                vertical: 6,
              ),
              margin: const EdgeInsets.only(bottom: 8),
              child: const GridWidget(),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 8),
              decoration: BoxDecoration(
                color: const Color.fromRGBO(246, 247, 249, 1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const ThreeButtons(),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    // flex: 1,
                    fit: FlexFit.tight,
                    child: GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SelectProductScreen(),
                        ),
                      ),
                      child: const Button(
                        buttonColor: Color.fromRGBO(74, 114, 255, 1),
                        buttonTitle: 'Добавить',
                        buttonIcon: 'assets/icons/plus.svg',
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  const Flexible(
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
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        selectedFontSize: 12,
        selectedLabelStyle: const TextStyle(
          color: Colors.black,
        ),
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/home.svg',
              height: 18.73,
              width: 18,
            ),
            label: 'Главная',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/shopping.svg',
              height: 18.73,
              width: 18,
            ),
            label: 'Товары',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/marker.svg',
              height: 18.73,
              width: 18,
            ),
            label: 'Магазин',
          ),
        ],
      ),
    );
  }
}
