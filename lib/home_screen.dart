import 'package:flutter/material.dart';
import 'components/home_screen_drawer.dart';
import 'components/image_carousel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget drawer = HomeScreenDrawer();
    Widget carousel = ImageCarousel();

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
            onPressed: () {},
            icon: Icon(Icons.shopping_cart),
          )
        ],
      ),
      drawer: drawer,
      body: carousel,
    );
  }
}
