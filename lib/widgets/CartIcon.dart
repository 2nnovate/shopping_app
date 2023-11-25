import 'package:flutter/material.dart';
import 'package:shopping_app/bloc/cart.dart';

class CartIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Badge(
        label: Text('${cartBloc.cartListCount}'),
        child: const Icon(Icons.shopping_cart),
      ),
    );
  }
}