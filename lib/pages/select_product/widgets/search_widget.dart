import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({super.key});

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(237, 240, 248, 1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12, right: 8),
                    child: Container(
                      child: SvgPicture.asset(
                        'assets/icons/search.svg',
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: const TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Поиск',
                          hintStyle: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Nuntino',
                            color: Color.fromRGBO(81, 99, 123, 1),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: SvgPicture.asset('assets/icons/scan.svg'),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Container(
            height: 36,
            width: 36,
            decoration: BoxDecoration(
              color: Color.fromRGBO(237, 240, 248, 1),
              borderRadius: BorderRadius.circular(12),
            ),
            padding: EdgeInsets.all(6),
            child: SvgPicture.asset(
              'assets/icons/setting.svg',
              width: 18,
              height: 14,
            ),
          )
        ],
      ),
    );
    /*   return Container(
      color: Colors.blueGrey,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            flex: 9,
            child: searchLine(),
          ),
          const SizedBox(
            width: 8,
          ),
          Flexible(
            fit: FlexFit.loose,
            child: settingIcon(),
          ),
        ],
      ),
    ); */
  }

  Container settingIcon() {
    return Container(
      width: 36,
      height: 36,
      padding: EdgeInsets.all(6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Color.fromRGBO(237, 240, 248, 1),
      ),
      child: SvgPicture.asset('assets/icons/setting.svg'),
    );
  }

  Container searchLine() {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromRGBO(237, 240, 248, 1),
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SvgPicture.asset('assets/icons/search.svg'),
              const SizedBox(
                width: 8,
              ),
              /* Container(
                color: Colors.lightBlueAccent,
                //fit: FlexFit.tight,
                child: TextField(
                  expands: false,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Поиск',
                    hintStyle: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Nuntino',
                      color: Color.fromRGBO(81, 99, 123, 1),
                    ),
                  ),
                ),
              ), */
              /* const Text(
                'Поиск',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Nuntino',
                  color: Color.fromRGBO(81, 99, 123, 1),
                ),
              ), */
            ],
          ),
          SvgPicture.asset('assets/icons/scan.svg'),
        ],
      ),
    );
  }
}
