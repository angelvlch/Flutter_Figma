import 'package:figma/configs/font_style.dart';

import 'package:figma/models/product.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ClothesCard extends StatefulWidget {
  final Product product;
  final void Function(bool? value) onChange;
  const ClothesCard({super.key, required this.product, required this.onChange});

  @override
  State<ClothesCard> createState() => _ClothesCardState();
}

class _ClothesCardState extends State<ClothesCard> {
  bool? isChecked = false;

  void onChange(bool? value) {
    setState(() {
      widget.product.isSelected = value!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
        padding: const EdgeInsets.all(12),
        decoration: decoration(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            numberWithCheck(),
            const SizedBox(height: 12),
            Row(
              children: [
                Image.asset(widget.product.image),
                const SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(widget.product.name),
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
                          Text(
                            '${widget.product.buyCost}',
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
                          Text(
                            '${widget.product.sellCost}',
                            style: TextStyle(fontSize: 16),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: Text(
                              '${widget.product.count}',
                              style: const TextStyle(
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: SvgPicture.asset('assets/icons/stock.svg'),
                          ),
                          const Text(
                            'Склад',
                            style: TextStyle(
                              fontFamily: MyFontStyle.fontFamily,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(
                            width: 125,
                          ),
                          Text('${widget.product.stockCount}',
                              style: const TextStyle(
                                fontFamily: MyFontStyle.fontFamily,
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                              )),
                        ],
                      ),
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
        Text(
          widget.product.id,
          style: const TextStyle(
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
            value: widget.product.isSelected,
            onChanged: widget.onChange,
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
        color: widget.product.isSelected
            ? Color.fromRGBO(74, 114, 255, 1)
            : Colors.white,
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
}
