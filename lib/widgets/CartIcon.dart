import 'package:flutter/material.dart';

class CartIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: Badge(
        label: Text('1'),
        child: const Icon(Icons.shopping_cart),
      ),
    );
  }
}