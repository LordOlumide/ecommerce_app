import 'package:flutter/material.dart';
import 'package:ecommerce_app/screens/product_details_screen.dart';

class BottomSummaryItem extends StatelessWidget {
  final String title;
  final String answer;

  const BottomSummaryItem({
    Key? key,
    required this.widget,
    required this.title,
    required this.answer,
  }) : super(key: key);

  final ProductDetails widget;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 3),
      child: Row(children: [
        Text(
          '$title:  ',
          style: TextStyle(color: Colors.grey, fontSize: 15),
        ),
        Text(
          answer,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ]),
    );
  }
}
