import 'package:figma/block_card.dart';
import 'package:figma/tmy_font_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class GridWidget extends StatelessWidget {
  const GridWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      //mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
          child: Column(
            children: [
              BlockCard(
                title: 'Касса',
                price: '42 310 ₽',
                iconPath: 'assets/icons/bag.svg',
                backColor: Color.fromRGBO(242, 245, 255, 1),
              ),
              BlockCard(
                title: 'Прибыль',
                price: '+32 000',
                iconPath: 'assets/icons/coins.svg',
                backColor: Color.fromRGBO(
                  245,
                  236,
                  254,
                  1,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            children: [
              BlockCard(
                title: 'Продано',
                price: '120',
                iconPath: 'assets/icons/money.svg',
                backColor: Color.fromRGBO(237, 251, 247, 1),
              ),
              BlockCard(
                title: 'Расходы',
                price: '-2400',
                iconPath: 'assets/icons/receipt.svg',
                backColor: Color.fromRGBO(255, 245, 244, 1),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
