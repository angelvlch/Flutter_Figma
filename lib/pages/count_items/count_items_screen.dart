import 'package:figma/configs/font_style.dart';
import 'package:figma/configs/foto.dart';
import 'package:figma/pages/proof_payment/proof_payment_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class CountItemsScreen extends StatefulWidget {
  const CountItemsScreen({super.key});

  @override
  State<CountItemsScreen> createState() => _CountItemsScreenState();
}

class _CountItemsScreenState extends State<CountItemsScreen> {
  bool? isChoose = false;
  AppBar get _buildAppBap {
    return AppBar(
      centerTitle: true,
      title: const Text(
        'Указать количество',
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
      ),
    );
  }

  Column get _buildBody {
    return Column(
      children: [
        _containerChips,
        _clothesCard,
      ],
    );
  }

  get _containerChips {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: [
          GestureDetector(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
              decoration: BoxDecoration(
                color: const Color.fromRGBO(28, 34, 43, 1),
                borderRadius: BorderRadius.circular(100),
              ),
              child: const Text(
                'Товар 1',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: MyFontStyle.fontFamily,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
            child: const Text(
              'Товар 2',
              style: TextStyle(
                color: Color.fromRGBO(81, 99, 123, 1),
                fontFamily: MyFontStyle.fontFamily,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
            child: const Text(
              'Товар 3',
              style: TextStyle(
                color: Color.fromRGBO(81, 99, 123, 1),
                fontFamily: MyFontStyle.fontFamily,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
            child: const Text(
              'Товар 4',
              style: TextStyle(
                color: Color.fromRGBO(81, 99, 123, 1),
                fontFamily: MyFontStyle.fontFamily,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }

  get _clothesCard {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
      padding: const EdgeInsets.all(12),
      decoration: decoration(),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(Foto.listPathFoto[0]),
              const SizedBox(
                width: 12,
              ),
              Expanded(
                child: Column(
                  children: [
                    const Text('Off-white, Футболка из рельефной ткани'),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Container(
                          height: 8,
                          width: 8,
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(29, 180, 105, 1),
                              borderRadius: BorderRadius.circular(20)),
                        ),
                        const SizedBox(width: 4),
                        const Text(
                          '500 ₽',
                          style: TextStyle(fontSize: 16),
                        ),
                        const SizedBox(width: 16),
                        Container(
                          height: 8,
                          width: 8,
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(127, 86, 248, 1),
                              borderRadius: BorderRadius.circular(20)),
                        ),
                        const SizedBox(width: 4),
                        const Text(
                          '1 200 ₽',
                          style: TextStyle(fontSize: 16),
                        ),
                        const SizedBox(width: 16),
                        const Expanded(
                          child: Text(
                            '36шт',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                            textAlign: TextAlign.end,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Divider(
            color: Color.fromRGBO(226, 232, 243, 1),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 8),
          ),
          Container(
            //padding: const EdgeInsets.symmetric(vertical: 8),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  child: _size('XS'),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  child: _size('S'),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  child: _size('S'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Row _size(String? size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          fit: FlexFit.tight,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '$size',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
                ),
              ],
            ),
          ),
        ),
        Flexible(
          fit: FlexFit.tight,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            height: 52,
            decoration: BoxDecoration(
              color: Color.fromRGBO(237, 240, 248, 1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 32,
                  width: 32,
                  padding: EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: SvgPicture.asset(
                    'assets/icons/minus.svg',
                  ),
                ),
                const Column(
                  children: [
                    Text(
                      '12 шт',
                      style: TextStyle(
                        color: Color.fromRGBO(74, 114, 255, 1),
                        fontFamily: MyFontStyle.fontFamily,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      '15 600 ₽',
                      style: TextStyle(
                        color: Color.fromRGBO(81, 99, 123, 1),
                        fontFamily: MyFontStyle.fontFamily,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 32,
                  width: 32,
                  padding: EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: SvgPicture.asset(
                    'assets/icons/plus1.svg',
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  BottomSheet get _buildBottomSheet {
    return BottomSheet(
      enableDrag: false,
      builder: (context) {
        return Container(
            height: MediaQuery.of(context).size.height * 0.20,
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(
                  width: 1.0,
                  color: Color.fromRGBO(226, 232, 243, 1),
                ),
              ),
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Итого',
                        style: TextStyle(
                          color: Color.fromRGBO(28, 34, 43, 1),
                          fontFamily: MyFontStyle.fontFamily,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        '100 402 ₽',
                        style: TextStyle(
                          color: Color.fromRGBO(81, 99, 123, 1),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontFamily: MyFontStyle.fontFamily,
                        ),
                      ),
                    ],
                  ),
                ),
                _buildButton(),
              ],
            ));
      },
      onClosing: () {},
    );
  }

  Container _buildButton() {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromRGBO(255, 221, 45, 1),
        borderRadius: BorderRadius.circular(12),
      ),
      margin: EdgeInsets.all(16),
      padding: EdgeInsets.all(8),
      alignment: Alignment.center,
      child: TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ProofPaymentScreen(),
            ),
          );
        },
        child: const Text(
          'Продолжить',
          style: TextStyle(
            color: Colors.black,
            fontFamily: MyFontStyle.fontFamily,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBap,
      body: _buildBody,
      bottomSheet: _buildBottomSheet,
    );
  }

  BoxDecoration decoration() {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(8),
      boxShadow: const [
        BoxShadow(
          color: Color.fromRGBO(45, 54, 67, 0.12),
          spreadRadius: -2,
          blurRadius: 24,
          offset: Offset(0, 4),
        ),
      ],
    );
  }
}
