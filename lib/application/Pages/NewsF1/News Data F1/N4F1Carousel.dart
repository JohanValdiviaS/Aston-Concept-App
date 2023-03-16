// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CarouselNews04 extends StatefulWidget {
  const CarouselNews04({super.key});

  @override
  State<CarouselNews04> createState() => _CarouselNews04State();
}

class _CarouselNews04State extends State<CarouselNews04> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 182.5,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            width: 3,
            color: const Color.fromRGBO(193, 255, 93, 1),
          ),
          borderRadius: BorderRadius.circular(
            15,
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(
            10,
          ),
          child: Image.network(
            'https://assets.astonmartinf1.com/public/cms/1WQCbPorDDXRYB8CMowIZl/4bc4ea913462aa5d15baec56b3048f1a/Z91_1776-Edit_2.jpg?&h=500&w=414&fit=thumb',
          ),
        ),
      ),
    );
  }
}
