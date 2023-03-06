// ignore_for_file: file_names

import 'package:aston_app/application/CarPage/CarListImg/DBXList.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DBXview extends StatefulWidget {
  const DBXview({super.key});

  @override
  State<DBXview> createState() => _DBXviewState();
}

class _DBXviewState extends State<DBXview> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 40,
          width: 260,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 4, 119, 106),
            borderRadius: BorderRadius.all(
              Radius.circular(5.0),
            ),
          ),
          child: Center(
            child: Text(
              'DBX',
              style: GoogleFonts.lora(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.symmetric(horizontal: 5.0),
          child: CarouselSlider(
            options: CarouselOptions(
              height: 220.0,
              autoPlay: true,
              aspectRatio: 2.0,
              enlargeCenterPage: true,
            ),
            items: imgListDBX
                .map(
                  (item) => ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 20, 156, 138),
                        borderRadius: BorderRadius.all(
                          Radius.circular(30.0),
                        ),
                      ),
                      child: Image.network(
                        item,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
