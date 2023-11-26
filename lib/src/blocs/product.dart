import 'dart:async';

import 'package:shopping_app/src/models/Product.dart';
import 'package:shopping_app/src/resources/ProductService.dart';

class ProductBloc {
  final ProductService _productService = ProductService();
  List<Product> _products = [];

  final StreamController<List<Product>> _productSubejct = StreamController<List<Product>>();

  Stream<List<Product>> get products => _productSubejct.stream;

  void getAllProducts() async {
    List<Product> fetchedProducts = await _productService.getAll();
    _products = fetchedProducts;
    _productSubejct.sink.add(_products);
  }

  dispose() {
    _productSubejct.close();
  }
}

final productBloc = ProductBloc();