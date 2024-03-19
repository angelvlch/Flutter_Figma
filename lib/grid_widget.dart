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
                iconPath: 'assets/bag.svg',
                backColor: Color.fromRGBO(242, 245, 255, 1),
              ),
              BlockCard(
                title: 'Прибыль',
                price: '+32 000',
                iconPath: 'assets/coins.svg',
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
                iconPath: 'assets/money.svg',
                backColor: Color.fromRGBO(237, 251, 247, 1),
              ),
              BlockCard(
                title: 'Расходы',
                price: '-2400',
                iconPath: 'assets/receipt.svg',
                backColor: Color.fromRGBO(255, 245, 244, 1),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class BlockCard extends StatelessWidget {
  final title;
  final price;
  final iconPath;
  final backColor;
  const BlockCard(
      {super.key, this.title, this.price, this.iconPath, this.backColor});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(2),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: backColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: MyFontStyle.fontSizeBase,
                // fontFamily: 'Nunito Sans',
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(price, style: TextStyle(fontSize: 18)),
                SvgPicture.asset(iconPath),
              ],
            ),
          ],
        ));
  }
}
