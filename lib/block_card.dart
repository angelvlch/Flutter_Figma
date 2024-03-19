import 'package:figma/tmy_font_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
                fontFamily: 'Nunito Sans',
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
