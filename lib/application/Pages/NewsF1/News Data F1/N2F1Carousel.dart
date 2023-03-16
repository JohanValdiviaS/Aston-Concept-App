// ignore_for_file: file_names

import 'package:aston_app/application/CarPage/CarListImg/NewsF102.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselNews02 extends StatefulWidget {
  const CarouselNews02({super.key});

  @override
  State<CarouselNews02> createState() => _CarouselNews02State();
}

class _CarouselNews02State extends State<CarouselNews02> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(horizontal: 1.0),
      child: CarouselSlider(
        options: CarouselOptions(
          height: 220,
          autoPlay: true,
          aspectRatio: 2.0,
          enlargeCenterPage: true,
        ),
        items: imgListNewsF102
            .map(
              (item) => ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 20, 156, 138),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15.0),
                    ),
                  ),
                  child: Image.network(
                    item,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
