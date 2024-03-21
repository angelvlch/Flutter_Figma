import 'package:figma/configs/font_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MenuButton extends StatelessWidget {
  final title;
  final iconPath;
  const MenuButton({super.key, this.iconPath, this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(iconPath),
        Text(title,
            style: TextStyle(
              fontSize: MyFontStyle.fontSizeBase,
              fontFamily: MyFontStyle.fontFamily,
            ))
      ],
    );
  }
}
