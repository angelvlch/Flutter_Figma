import 'package:figma/tmy_font_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class ThreeButtons extends StatelessWidget {
  const ThreeButtons({super.key});
// вынести все в виджет
  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.all(12),
            child: MyWidget(
                iconPath: 'assets/icons/calendar.svg',
                title: 'История\nпродаж'),
          ),
          Padding(
            padding: EdgeInsets.all(12),
            child: MyWidget(
                iconPath: 'assets/icons/users.svg', title: 'Список\nдолжников'),
          ),
          Padding(
            padding: EdgeInsets.all(12),
            child: MyWidget(
                iconPath: 'assets/icons/file-plus.svg', title: 'Мои\nрасходы'),
          ),
        ],
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  final title;
  final iconPath;
  const MyWidget({super.key, this.title, this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Column(
      textDirection: TextDirection.ltr,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(iconPath),
        const SizedBox(
          height: 8,
        ),
        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            // fontFamily: 'Nuntino',
            //color: Colors.red,
            fontSize: MyFontStyle.fontSizeBase,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
