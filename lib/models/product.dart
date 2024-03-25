class Product {
  final String name;
  final String id;
  final double sellCost;
  final double buyCost;
  final String image;
  final int count;
  final int stockCount;
  bool isSelected;

  Product({
    required this.name,
    required this.id,
    required this.sellCost,
    required this.buyCost,
    required this.image,
    required this.count,
    required this.stockCount,
    this.isSelected = false,
  });
}
