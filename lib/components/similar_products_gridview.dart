import 'package:flutter/material.dart';
import 'package:ecommerce_app/products_list.dart';
import 'package:ecommerce_app/components/single_product_card.dart';

class SimilarProducts extends StatefulWidget {
  const SimilarProducts({Key? key}) : super(key: key);

  @override
  State<SimilarProducts> createState() => _SimilarProductsState();
}

class _SimilarProductsState extends State<SimilarProducts> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: products_list.length,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, index) {
        return SingleProduct(
          name: products_list[index]['name'],
          picture: products_list[index]['picture'],
          old_price: products_list[index]['old price'],
          price: products_list[index]['price'],
        );
      },
    );
  }
}
