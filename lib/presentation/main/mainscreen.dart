import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Padding(
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
                        color: Color.fromRGBO(74, 114, 255, 1.0),
                      ),
                    ],
                  ),
                ],
              ),
              Stack(
                // fit: StackFit.expand,
                //textDirection: TextDirection.rtl,
                //alignment: AlignmentDirectional.centerStart,
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
                            style:
                                TextStyle(fontSize: 12, color: Colors.white)),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
