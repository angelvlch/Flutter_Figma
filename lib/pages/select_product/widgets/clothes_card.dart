import 'package:figma/configs/font_style.dart';
import 'package:figma/configs/foto.dart';
import 'package:flutter/material.dart';

class ClothesCard extends StatefulWidget {
  final index;

  const ClothesCard({super.key, this.index});

  @override
  State<ClothesCard> createState() => _ClothesCardState();
}

class _ClothesCardState extends State<ClothesCard> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
        // height: 154,
        margin: EdgeInsets.symmetric(vertical: 4, horizontal: 16),
        padding: const EdgeInsets.all(12),
        decoration: decoration(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            numberWithCheck(),
            const SizedBox(height: 12),
            Row(
              children: [
                Image.asset(Foto.listPathFoto[widget.index]),
                SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text('Off-white, Футболка из рельефной ткани'),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          Container(
                            height: 8,
                            width: 8,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(29, 180, 105, 1),
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
                                color: Color.fromRGBO(127, 86, 248, 1),
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
                              '54шт',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                              textAlign: TextAlign.end,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ));
  }

  Row numberWithCheck() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          '№54931',
          style: TextStyle(
            fontFamily: MyFontStyle.fontFamily,
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(
          height: 20,
          width: 20,
          child: Checkbox(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            activeColor: const Color.fromRGBO(74, 114, 255, 1),
            value: isChecked,
            onChanged: (value) => change(value),
          ),
        ),
      ],
    );
  }

  BoxDecoration decoration() {
    return BoxDecoration(
      color: Colors.white,
      border: Border.all(
        width: 1,
        color: isChecked! ? Color.fromRGBO(74, 114, 255, 1) : Colors.white,
      ),
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

  void change(bool? value) {
    setState(() {
      isChecked = value;
    });
  }
}
