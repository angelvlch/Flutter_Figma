import 'package:figma/configs/font_style.dart';
import 'package:figma/pages/proof_payment/widgets/switch-widget.dart';
import 'package:flutter/material.dart';

class ProofPaymentScreen extends StatefulWidget {
  const ProofPaymentScreen({super.key});

  @override
  State<ProofPaymentScreen> createState() => _ProofPaymentScreenState();
}

class _ProofPaymentScreenState extends State<ProofPaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _createAppBar(),
      body: _createBody(),
      bottomSheet: _createBottomSheet(),
    );
  }

  Column _createBody() {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: const Color.fromRGBO(237, 240, 248, 1),
            borderRadius: BorderRadius.circular(12),
          ),
          margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: const TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Покупателя',
              hintStyle: TextStyle(fontFamily: MyFontStyle.fontFamily),
              contentPadding: EdgeInsets.all(16),
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: const Color.fromRGBO(237, 240, 248, 1),
            borderRadius: BorderRadius.circular(12),
          ),
          margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: const TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              prefixStyle: TextStyle(color: Colors.black),
              prefixText: '+996 ',
              hintText: '(000) 000 000',
              hintStyle: TextStyle(fontFamily: MyFontStyle.fontFamily),
              contentPadding: EdgeInsets.all(16),
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: const Color.fromRGBO(237, 240, 248, 1),
            borderRadius: BorderRadius.circular(12),
          ),
          margin: const EdgeInsets.only(left: 16, right: 16, top: 8),
          child: const TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Покупателя',
              hintStyle: TextStyle(fontFamily: MyFontStyle.fontFamily),
              contentPadding: EdgeInsets.all(16),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Продать в долг',
                style: TextStyle(
                  fontFamily: MyFontStyle.fontFamily,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SwitchWidget(),
            ],
          ),
        )
      ],
    );
  }

  AppBar _createAppBar() {
    return AppBar(
      title: const Text(
        'Подтверждение оплаты',
        style: TextStyle(
            fontSize: 18,
            fontFamily: MyFontStyle.fontFamily,
            fontWeight: FontWeight.w700),
      ),
      centerTitle: true,
    );
  }

  BottomSheet _createBottomSheet() {
    return BottomSheet(
        enableDrag: false,
        onClosing: () => null,
        builder: (context) {
          return Container(
            height: MediaQuery.of(context).size.height * 0.30,
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(
                  width: 1.0,
                  color: Color.fromRGBO(226, 232, 243, 1),
                ),
              ),
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Expanded(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Количество',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            fontFamily: MyFontStyle.fontFamily,
                          ),
                        ),
                        Text(
                          '256 шт',
                          style: TextStyle(
                            fontFamily: MyFontStyle.fontFamily,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(81, 99, 123, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Сумма',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            fontFamily: MyFontStyle.fontFamily,
                          ),
                        ),
                        Text(
                          '100 400  ₽',
                          style: TextStyle(
                            fontFamily: MyFontStyle.fontFamily,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(81, 99, 123, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Скидка',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            fontFamily: MyFontStyle.fontFamily,
                          ),
                        ),
                        Text(
                          '+ Добавить',
                          style: TextStyle(
                            fontFamily: MyFontStyle.fontFamily,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Color.fromRGBO(74, 114, 255, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Итого к оплате',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            fontFamily: MyFontStyle.fontFamily,
                          ),
                        ),
                        Text(
                          '100 402  ₽',
                          style: TextStyle(
                            fontFamily: MyFontStyle.fontFamily,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(81, 99, 123, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Padding(
                          padding: const EdgeInsets.all(4),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(136, 151, 174, 1),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: TextButton(
                              onPressed: () {},
                              child: const Text(
                                'Продать',
                                style: TextStyle(
                                  fontFamily: MyFontStyle.fontFamily,
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }
}
