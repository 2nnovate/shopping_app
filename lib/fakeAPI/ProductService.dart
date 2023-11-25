import 'package:shopping_app/types/Product.dart';

class ProductService {
  Future<List<Product>> getAll() async {
    return [
      Product('Apple', 3000),
      Product('Grape', 5000),
      Product('Orange', 4000),
      Product('Fork', 12000),
      Product('Cucumber', 1000),
      Product('Chicken', 8000),
    ];
  }
}