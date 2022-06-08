import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ImageCarousel extends StatelessWidget {
  ImageCarousel({Key? key}) : super(key: key);

  CarouselController carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      carouselController: carouselController,
      items: [
        CustomCarouselItem(
            context: context, image: AssetImage('images/1.jpg')),
        CustomCarouselItem(
            context: context, image: AssetImage('images/2.jpg')),
        CustomCarouselItem(
            context: context, image: AssetImage('images/3.jpg')),
        CustomCarouselItem(
            context: context, image: AssetImage('images/4.jpg')),
      ],
      options: CarouselOptions(
        height: 200,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 2),
      ),
    );
  }
}

Widget CustomCarouselItem({context, image}) {
  return Container(
    width: MediaQuery.of(context).size.width,
    margin: EdgeInsets.symmetric(horizontal: 5.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      image: DecorationImage(
        image: image,
        fit: BoxFit.cover,
      ),
    ),
  );
}
