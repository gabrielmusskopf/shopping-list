import 'package:mobile/enums/category.dart';

class Product {
  final int id;
  final String title;
  final Category category;
  final String image;

  Product(this.id, this.title, this.category, this.image);
}

// dummy items
List<Product> products = [
  Product(1, "Banana", Category.Frutas, "assets/images/banana.png"),
  Product(2, "Planta", Category.Outro, "assets/images/plant.png"),
];
