import 'package:flutter/material.dart';
import 'package:ecommerce_app/screens/product_details_screen.dart';

class SingleProduct extends StatelessWidget {
  final String name;
  final String picture;
  final int? old_price;
  final int price;

  const SingleProduct({
    required this.name,
    required this.picture,
    this.old_price,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      child: Card(
        child: Hero(
          tag: name,
          child: Material(
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ProductDetails(
                    productName: name,
                    productPicture: picture,
                    productOldPrice: old_price,
                    productPrice: price,
                    productDescription: 'lorem ipsum capisce destroy'
                        'lorem ipsum capisce destroylorem ipsum capisce destroy'
                        'lorem ipsum capisce destroylorem ipsum capisce destroy'
                        'lorem ipsum capisce destroylorem ipsum capisce destroy'
                        'lorem ipsum capisce destroylorem ipsum capisce destroy',
                  ),
                ));
              },
              child: GridTile(
                child: Image.asset(
                  picture,
                  fit: BoxFit.cover,
                ),
                footer: Container(
                  color: Colors.white70,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      old_price != null
                          ? Text(
                        '\$$old_price',
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          color: Colors.red,
                          decoration: TextDecoration.lineThrough,
                        ),
                      )
                          : SizedBox(),
                      Text(
                        '\$$price',
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
