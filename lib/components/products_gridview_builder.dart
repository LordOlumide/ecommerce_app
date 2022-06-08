import 'package:flutter/material.dart';
import 'package:ecommerce_app/components/products.dart';
import 'package:ecommerce_app/screens/product_details.dart';

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
                  height: 60,
                  color: Colors.white70,
                  child: ListTile(
                    leading: Text(
                      name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    title: Text(
                      '\$$price',
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    subtitle: old_price != null
                        ? Text(
                            '\$$old_price',
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              color: Colors.red,
                              decoration: TextDecoration.lineThrough,
                            ),
                          )
                        : null,
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
