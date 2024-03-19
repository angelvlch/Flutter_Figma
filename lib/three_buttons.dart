import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ThreeButtons extends StatelessWidget {
  const ThreeButtons({super.key});
// вынести все в виджет
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.all(12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/icons/calendar.svg'),
                Text(
                  'История\nпродаж',
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/icons/users.svg'),
                Text(
                  'Список\nдолжников',
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(12),
            child: Column(
              children: [
                SvgPicture.asset('assets/icons/file-plus.svg'),
                Text(
                  'Мои\nрасходы',
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
