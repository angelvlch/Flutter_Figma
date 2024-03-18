import 'package:figma/tmy_font_style.dart';
import 'package:flutter/material.dart';

class DataWidget extends StatelessWidget {
  const DataWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          //mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Color.fromRGBO(28, 34, 43, 1.0),
              ),
              child: const Text(
                'Сегодня',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: MyFontStyle.fontSizeBase,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Text('7 дней'),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Text(
                'Месяц',
                style: const TextStyle(),
              ),
            ),
          ],
        ),
        const Text(
          'Календарь',
          style: const TextStyle(
            color: MyFontStyle.blueColor,
          ),
        ),
      ],
    );
  }
}
