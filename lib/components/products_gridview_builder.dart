import 'package:flutter/material.dart';
import 'package:ecommerce_app/products_list.dart';
import 'package:ecommerce_app/components/single_product_card.dart';

class ProductsViewport extends StatefulWidget {
  const ProductsViewport({Key? key}) : super(key: key);

  @override
  State<ProductsViewport> createState() => _ProductsViewportState();
}

class _ProductsViewportState extends State<ProductsViewport> {
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
