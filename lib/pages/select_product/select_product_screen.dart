import 'package:figma/configs/foto.dart';
import 'package:figma/models/product.dart';
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
  final _products = [
    Product(
        name: 'test',
        id: 'id121',
        sellCost: 3434,
        buyCost: 2323,
        image: Foto.listPathFoto.first,
        count: 12,
        stockCount: 34),
    Product(
        name: 'test',
        id: 'id121',
        sellCost: 3434,
        buyCost: 2323,
        image: Foto.listPathFoto.first,
        count: 12,
        stockCount: 34),
    Product(
        name: 'test',
        id: 'id121',
        sellCost: 3434,
        buyCost: 2323,
        image: Foto.listPathFoto.first,
        count: 12,
        stockCount: 34),
    Product(
        name: 'test',
        id: 'id121',
        sellCost: 3434,
        buyCost: 2323,
        image: Foto.listPathFoto.first,
        count: 12,
        stockCount: 34),
    Product(
        name: 'test',
        id: 'id121',
        sellCost: 3434,
        buyCost: 2323,
        image: Foto.listPathFoto.first,
        count: 12,
        stockCount: 34),
  ];
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
      body: Stack(
        children: [
          Column(
            children: [
              const SearchWidget(),
              const ContainerChips(),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: _products.length,
                  itemBuilder: (context, index) => ClothesCard(
                    product: _products.elementAt(index),
                    onChange: (value) => setState(
                      () {
                        _products.elementAt(index).isSelected = value ?? false;
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
          if (_products.any((element) => element.isSelected == true))
            Align(
              alignment: Alignment.center,
              child: Container(
                color: Colors.red,
                height: 100,
              ),
            ),
        ],
      ),
    );
  }
}
