import 'package:figma/tmy_font_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(8, 16, 8, 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Торговая точка',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Row(
                children: [
                  Text(
                    'Проход 456а',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Icon(
                    Icons.chevron_right_sharp,
                    color: MyFontStyle.blueColor,
                  ),
                ],
              ),
            ],
          ),
          Stack(
            children: [
              SizedBox(
                height: 35,
              ),
              Positioned(
                bottom: 0,
                child: SvgPicture.asset(
                  'assets/Icon.svg',
                  width: 24,
                  height: 24,
                ),
              ),
              Positioned(
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(255, 87, 77, 1),
                  ),
                  child: const Center(
                    child: Text('2',
                        style: TextStyle(fontSize: 12, color: Colors.white)),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
