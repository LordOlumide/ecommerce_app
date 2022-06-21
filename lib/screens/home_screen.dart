import 'package:flutter/material.dart';
import '../components/home_screen_drawer.dart';
import '../components/image_carousel.dart';
import '../components/horizontal_listview.dart';
import '../components/products_gridview_builder.dart';
import 'cart_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  Widget drawer = HomeScreenDrawer();
  Widget carousel = ImageCarousel();
  Widget products = ProductsViewport();
  Widget horizontalList = HorizontalList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text('FashApp'),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CartScreen()));
            },
            icon: Icon(Icons.shopping_cart),
          )
        ],
      ),
      drawer: drawer,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          carousel,
          const Padding(
            padding: EdgeInsets.all(5),
            child: Text(
              'Categories',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
          horizontalList,
          Padding(
            padding: EdgeInsets.all(5),
            child: Text(
              'Recent Products',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
          Flexible(
            child: products,
          ),
        ],
      ),
    );
  }
}
