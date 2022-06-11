import 'package:flutter/material.dart';

class CartProducts extends StatefulWidget {
  @override
  State<CartProducts> createState() => _CartProductsState();
}

class _CartProductsState extends State<CartProducts> {
  var products_on_cart = [
    {
      'name': 'Smoke',
      'picture': 'images/1.jpg',
      'price': 200,
      'size': 'M',
      'colour': 'Black',
      'quantity': '1',
    },
    {
      'name': 'Fire',
      'picture': 'images/2.jpg',
      'price': 40,
      'size': 'XL',
      'colour': 'Red',
      'quantity': '1',
    },
    {
      'name': 'Light',
      'picture': 'images/3.jpg',
      'price': 200,
      'size': 'L',
      'colour': 'Yellow',
      'quantity': '1',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      itemBuilder: (context, index) {
        return SingleCartProduct(
          cart_product_name: products_on_cart[index]['name'],
          cart_product_picture: products_on_cart[index]['picture'],
          cart_product_price: products_on_cart[index]['price'],
          cart_product_size: products_on_cart[index]['size'],
          cart_product_colour: products_on_cart[index]['colour'],
          cart_product_quantity: products_on_cart[index]['quantity'],
        );
      },
    );
  }
}

class SingleCartProduct extends StatelessWidget {
  final cart_product_name;
  final cart_product_picture;
  final cart_product_price;
  final cart_product_size;
  final cart_product_colour;
  final cart_product_quantity;

  SingleCartProduct({
    required this.cart_product_name,
    required this.cart_product_picture,
    required this.cart_product_price,
    required this.cart_product_size,
    required this.cart_product_colour,
    required this.cart_product_quantity,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
// ========== This section is for the leading image ===========
        leading: Image.asset(
          cart_product_picture,
          height: 80,
          width: 80,
        ),
// ========== This section is for the title ===========
        title: Text(
          cart_product_name,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
// =========== Section showing the size ============
              children: [
                Padding(
                  padding: EdgeInsets.all(0),
                  child: Text('Size:'),
                ),
                Padding(
                  padding: EdgeInsets.all(6),
                  child: Text(
                    cart_product_size,
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ),
// ============== Section showing the colour ==========
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 8, 0, 8),
                  child: Text('Colour:'),
                ),
                Padding(
                  padding: EdgeInsets.all(6),
                  child: Text(
                    cart_product_colour,
                    style: TextStyle(
                      color: Colors.red
                    ),
                  ),
                ),
              ],
            ),
// ========= Section showing the price ==========
            Padding(
              padding: EdgeInsets.all(0),
              child: Text(
                '\$$cart_product_price',
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.w800,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),

// ========== This section is for the quantity ===========
        trailing: Column(
          children: [
            IconButton(
              padding: EdgeInsets.all(0),
              constraints: BoxConstraints(
                minWidth: 15,
                minHeight: 15
              ),
              onPressed: () {},
              icon: Icon(Icons.arrow_drop_up),
            ),
            Text('$cart_product_quantity'),
            IconButton(
              padding: EdgeInsets.all(0),
              constraints: BoxConstraints(
                  minWidth: 15,
                  minHeight: 15
              ),
              onPressed: () {},
              icon: Icon(Icons.arrow_drop_down),
            ),
          ],
        ),
      ),
    );
  }
}
