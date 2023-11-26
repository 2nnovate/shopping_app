import 'dart:async';

import 'package:shopping_app/types/CartItem.dart';
import 'package:shopping_app/types/Product.dart';

class CartBloc {
  List<CartItem> _cartList = [];

  final StreamController<List<CartItem>> _cartSubject = StreamController<List<CartItem>>();
  final StreamController<int> _cartCountSubject = StreamController<int>();

  Stream<List<CartItem>> get cartList => _cartSubject.stream;
  Stream<int> get cartListCount => _cartCountSubject.stream;

  void add(Product product, int quentity) {
    print('add event triggerd ${product.name}, ${quentity}');
    _cartList.add(CartItem(product, quentity));
    _cartSubject.sink.add(_cartList);
    _cartCountSubject.sink.add(_cartList.length);
  }

  dispose() {
    _cartSubject.close();
    _cartCountSubject.close();
  }
}

final cartBloc = CartBloc();