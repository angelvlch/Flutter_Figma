import 'package:figma/configs/font_style.dart';
import 'package:flutter/material.dart';

class proofPaymentScreen extends StatefulWidget {
  const proofPaymentScreen({super.key});

  @override
  State<proofPaymentScreen> createState() => _proofPaymentScreenState();
}

class _proofPaymentScreenState extends State<proofPaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Подтверждение оплаты'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color.fromRGBO(237, 240, 248, 1),
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
              color: Color.fromRGBO(237, 240, 248, 1),
              borderRadius: BorderRadius.circular(12),
            ),
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: const TextField(
              decoration: InputDecoration(
                // isDense: true,
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
              color: Color.fromRGBO(237, 240, 248, 1),
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
        ],
      ),
    );
  }
}
