import 'package:figma/configs/font_style.dart';
import 'package:flutter/material.dart';

class ContainerChips extends StatefulWidget {
  const ContainerChips({super.key});

  @override
  State<ContainerChips> createState() => _ContainerChipsState();
}

class _ContainerChipsState extends State<ContainerChips> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: chipsRow(),
    );
  }

  Widget chipsRow() {
    return Container(
      child: Row(
        children: [
          active(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            child: const Text(
              'Проход 12г',
              style: TextStyle(
                fontSize: 14,
                color: Color.fromRGBO(81, 99, 123, 1),
                fontWeight: FontWeight.w600,
                fontFamily: MyFontStyle.fontFamily,
              ),
            ),
          ),
          SizedBox(
            width: 4,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            child: const Text(
              'Контейнер 454',
              style: TextStyle(
                fontSize: 14,
                color: Color.fromRGBO(81, 99, 123, 1),
                fontWeight: FontWeight.w600,
                fontFamily: MyFontStyle.fontFamily,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container active() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Color.fromRGBO(28, 34, 43, 1),
      ),
      child: const Text(
        'Моя точка',
        style: TextStyle(
          fontSize: 14,
          color: Colors.white,
          fontWeight: FontWeight.w600,
          fontFamily: MyFontStyle.fontFamily,
        ),
      ),
    );
  }
}
