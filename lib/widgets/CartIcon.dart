import 'package:flutter/material.dart';
import 'package:shopping_app/bloc/cart.dart';

class CartIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('Cart Icon widget has rendered');
    return StreamBuilder<Object>(
      initialData: 0,
      stream: cartBloc.cartListCount,
      builder: (context, snapshot) {
        return Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Badge(
            label: Text('${snapshot.data.toString()}'),
            child: const Icon(Icons.shopping_cart),
          ),
        );
      }
    );
  }
}