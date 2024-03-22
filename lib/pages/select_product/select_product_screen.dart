import 'package:figma/pages/select_product/widgets/clothes_card.dart';
import 'package:figma/pages/select_product/widgets/container_chips.dart';
import 'package:figma/pages/select_product/widgets/search_widget.dart';
import 'package:flutter/material.dart';

class SelectProductScreen extends StatefulWidget {
  const SelectProductScreen({super.key});

  @override
  State<SelectProductScreen> createState() => _SelectProductScreenState();
}

class _SelectProductScreenState extends State<SelectProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Выбрать товары',
          style: TextStyle(
            fontSize: 24,
            fontFamily: 'Nuntino',
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Column(
        children: [
          const SearchWidget(),
          const ContainerChips(),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 4,
              itemBuilder: (context, index) => ClothesCard(index: index),
            ),
          ),
        ],
      ),
    );
  }
}
