// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class DestinationSuggestion extends StatelessWidget {
  const DestinationSuggestion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: Column(children: [
        Container(
          margin: EdgeInsets.all(10),
          alignment: Alignment.topLeft,
          child: Text('Popular Destinations'),
        ),
        CarouselSlider(
          options: CarouselOptions(
              viewportFraction: 0.85,
              initialPage: 0,
              enlargeCenterPage: true,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayCurve: Curves.fastOutSlowIn,
              aspectRatio: 18 / 9),
          items: [1, 2, 3, 4, 5].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/dest.jpg"),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Card(
                    elevation: 0,
                    color: Colors.transparent,
                    child: Text(
                      'Destination description $i ',
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ),
                );
              },
            );
          }).toList(),
        )
      ]),
    );
  }
}
