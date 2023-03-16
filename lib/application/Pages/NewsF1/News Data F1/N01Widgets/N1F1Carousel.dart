// ignore_for_file: file_names

import 'package:aston_app/application/CarPage/CarListImg/NewsF101.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselNews01 extends StatefulWidget {
  const CarouselNews01({super.key});

  @override
  State<CarouselNews01> createState() => _CarouselNews01State();
}

class _CarouselNews01State extends State<CarouselNews01> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(horizontal: 1.0),
      child: CarouselSlider(
        options: CarouselOptions(
          height: 200.0,
          autoPlay: true,
          aspectRatio: 2.0,
          enlargeCenterPage: true,
        ),
        items: imgListNewsF101
            .map(
              (item) => ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  decoration: const BoxDecoration(
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
