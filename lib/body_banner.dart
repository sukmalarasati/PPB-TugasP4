import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class BBanner {
  String url = "";
  String name = "";
  double rate = 0.0;
  BBanner(this.url, this.name, this.rate);
}

Widget BodyBanner({List<BBanner> banners = const []}) {
  return CarouselSlider(
    items: banners
        .map((banner) => ListView(padding: EdgeInsets.all(10), children: [
              Container(
                height: 350,
                margin: EdgeInsets.all(.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: AssetImage(banner.url),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Center(
                child: Text(
                  banner.name,
                  style: const TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 68, 67, 67)),
                ),
              ),
              Center(
                child: RatingBarIndicator(
                  rating: banner.rate,
                  itemBuilder: (context, index) => const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  itemCount: 5,
                  itemSize: 20.0,
                  direction: Axis.horizontal,
                ),
              ),
            ]))
        .toList(),
    options: CarouselOptions(
      height: 410,
      enlargeCenterPage: true,
      autoPlay: true,
      aspectRatio: 16 / 9,
      autoPlayCurve: Curves.fastOutSlowIn,
      enableInfiniteScroll: true,
      autoPlayAnimationDuration: Duration(milliseconds: 1000),
      viewportFraction: .7,
    ),
  );
}
