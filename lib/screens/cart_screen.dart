import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'package:ecommerce_app/components/cart_products.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        centerTitle: true,
        title: InkWell(
          onTap: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => HomeScreen()));
          },
          child: Text('Cart'),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),

      body: CartProducts(),

      bottomNavigationBar: Container(
        height: 60,
        padding: EdgeInsets.all(0),
        color: Colors.white,
        child: Row(
          textBaseline: TextBaseline.alphabetic,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Center(
                child: ListTile(
                  title: Text('Total:'),
                  subtitle: Text('\$1500'),
                ),
              ),
            ),
            Expanded(
              child: MaterialButton(
                color: Colors.red,
                onPressed: () {},
                child: Text('Checkout'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
