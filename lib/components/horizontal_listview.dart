import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  const HorizontalList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Category(image_location: 'images/1.jpg', image_caption: 'Smoke'),
          Category(image_location: 'images/2.jpg', image_caption: 'Fire'),
          Category(image_location: 'images/3.jpg', image_caption: 'Light'),
          Category(image_location: 'images/4.jpg', image_caption: 'Engine'),
          Category(image_location: 'images/5.jpeg', image_caption: 'MegaMind'),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({required this.image_location, required this.image_caption});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      child: InkWell(
        child: ListTile(
          onTap: () {},
          title: Image.asset(
            image_location,
            width: 80.0,
            height: 60.0,
            fit: BoxFit.cover,
          ),
          subtitle: Container(
            alignment: Alignment.topCenter,
            child: Text(
              image_caption,
            ),
          ),
        ),
      ),
    );
  }
}
