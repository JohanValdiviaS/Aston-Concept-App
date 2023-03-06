// ignore_for_file: file_names

import 'package:aston_app/application/CarPage/CarListImg/F1List.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AstonF1view extends StatefulWidget {
  const AstonF1view({super.key});

  @override
  State<AstonF1view> createState() => _AstonF1viewState();
}

class _AstonF1viewState extends State<AstonF1view> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          width: 260,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 4, 119, 106),
            borderRadius: BorderRadius.all(
              Radius.circular(5.0),
            ),
          ),
          child: Center(
            child: TextButton(
              onPressed: () {},
              child: Text(
                'F1 Team',
                style: GoogleFonts.lora(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromRGBO(193, 255, 93, 1),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: CarouselSlider(
            options: CarouselOptions(
              height: 200.0,
              autoPlay: true,
              aspectRatio: 2.0,
              enlargeCenterPage: true,
            ),
            items: imgListF1
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
