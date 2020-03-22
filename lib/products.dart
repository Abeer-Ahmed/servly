import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> products;

  Products(this.products);

  @override
  Widget build(BuildContext context) {
    return //* PRODUCT CARDS
        Column(
            children: products
                .map(
                  (product) => Card(
                          child: Column(children: <Widget>[
                        Image.asset('assets/gelato.jpg'),
                        Text(product)
                      ])),
                )
                .toList());
  }
}
