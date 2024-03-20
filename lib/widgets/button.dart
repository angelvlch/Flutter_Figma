import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Button extends StatelessWidget {
  final buttonColor;
  final buttonIcon;
  final buttonTitle;
  const Button(
      {super.key, this.buttonTitle, this.buttonColor, this.buttonIcon});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 16,
      ),
      decoration: BoxDecoration(
          color: buttonColor, borderRadius: BorderRadius.circular(12)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(buttonIcon),
          SizedBox(
            height: 8,
          ),
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
