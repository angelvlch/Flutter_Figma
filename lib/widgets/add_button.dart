import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AddButton extends StatelessWidget {
  final buttonColor;
  final buttonIcon;
  final buttonTitle;
  const AddButton(
      {super.key, this.buttonTitle, this.buttonColor, this.buttonIcon});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 16,
      ),
      color: buttonColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(buttonIcon),
          Text(
            buttonTitle,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              fontFamily: 'Nuntino',
              color: Color.fromRGBO(255, 255, 255, 1),
            ),
          )
        ],
      ),
    );
  }
}
