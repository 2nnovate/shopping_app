import 'package:flutter/material.dart';
import 'package:shopping_app/src/blocs/cart.dart';
import 'package:shopping_app/src/blocs/product.dart';
import 'package:shopping_app/src/models/Product.dart';

class ProductList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('Product List widget has rendered');
    return StreamBuilder<List<Product>>(
      initialData: [],
      stream: productBloc.products,
      builder: (context, AsyncSnapshot<List<Product>> snapshot) {
        return ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: snapshot.data?.length,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () {
                if (snapshot.data?[index] == null) {
                  return;
                }

                cartBloc.add(snapshot.data?[index] as Product, 1);
              },
              child: Container(
                height: 50,
                child: Center(child: Text('Add cart on: ${snapshot.data?[index]?.name}')),
              ),
            );
          }
        );
      },
    );
  }
}