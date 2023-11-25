import 'dart:async';

import 'package:shopping_app/types/CartItem.dart';
import 'package:shopping_app/types/Product.dart';

class CartBloc {
  final StreamController _cartConroller = StreamController();
  List<CartItem> cartList = [
    CartItem(
      Product('Apple', 3000),
      1,
    )
  ];
  int get cartListCount => cartList.length;
  
  CartBloc() {
    _cartConroller.stream.listen((cartItem) {
      // TODO: add cart item in cart list
      cartList.add(cartItem);
      print(cartListCount);
    });
  }

  void add(Product product, int quentity) {
    _cartConroller.sink.add(CartItem(product, quentity));
  }
}

final cartBloc = CartBloc();