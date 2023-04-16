// ignore_for_file: file_names, camel_case_types

import 'package:aston_app/application/Pages/Versions/Vantage%20Versions/VantageCoupe.dart';
import 'package:aston_app/application/Pages/Versions/Vantage%20Versions/VantageF1Coupe.dart';
import 'package:aston_app/application/Pages/Versions/Vantage%20Versions/VantageRoadster.dart';
import 'package:aston_app/application/Pages/Versions/Vantage%20Versions/VantageRoadsterF1.dart';
import 'package:aston_app/application/Pages/Versions/Vantage%20Versions/VantageV12Coupe.dart';
import 'package:aston_app/application/Pages/Versions/Vantage%20Versions/VantageV12Roadster.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class VantageVersions extends StatefulWidget {
  const VantageVersions({super.key});

  @override
  State<VantageVersions> createState() => _VantageVersionsState();
}

class _VantageVersionsState extends State<VantageVersions> {
  int currentIndex = 0;
  final screens = [
    const VantageCoupe(),
    const VantageRoadster(),
    const VantageCoupeF1(),
    const VantageRoadsterF1(),
    const VantageV12Coupe(),
    const VantageV12Roadster(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: Container(
        color: const Color.fromRGBO(0, 89, 79, 1),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 10,
          ),
          child: GNav(
            backgroundColor: const Color.fromRGBO(0, 89, 79, 1),
            color: Colors.white,
            activeColor: const Color.fromRGBO(143, 216, 26, 1),
            tabBackgroundColor: const Color.fromRGBO(0, 89, 79, 1),
            tabBorder: Border.all(
              color: const Color.fromRGBO(193, 255, 93, 1),
              width: 2,
            ),
            tabBorderRadius: 15,
            duration: const Duration(milliseconds: 200),
            padding: const EdgeInsets.symmetric(
              horizontal: 8,
              vertical: 10,
            ),
            gap: 2,
            selectedIndex: currentIndex,
            onTabChange: (index) {
              setState(
                () {
                  currentIndex = index;
                },
              );
            },
            // ignore: prefer_const_literals_to_create_immutables
            tabs: [
              const GButton(
                icon: FontAwesome5.car,
                text: ' Coupe',
              ),
              const GButton(
                icon: FontAwesome5.car,
                text: ' Roadster',
              ),
              const GButton(
                icon: FontAwesome5.car,
                text: ' Coupe F1®',
              ),
              const GButton(
                icon: FontAwesome5.car,
                text: ' Roadster F1®',
              ),
              const GButton(
                icon: FontAwesome5.car,
                text: ' V12 Coupe',
              ),
              const GButton(
                icon: FontAwesome5.car,
                text: ' V12 Roadster',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
