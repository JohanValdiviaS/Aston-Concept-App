// ignore_for_file: file_names, camel_case_types

import 'package:aston_app/application/Pages/Versions/F1Versions/AMR21.dart';
import 'package:aston_app/application/Pages/Versions/F1Versions/ARM22.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class F1Versions extends StatefulWidget {
  const F1Versions({super.key});

  @override
  State<F1Versions> createState() => _F1VersionsState();
}

class _F1VersionsState extends State<F1Versions> {
  int currentIndex = 0;
  final screens = [
    const AMR21(),
    const AMR22(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: Container(
        color: const Color.fromRGBO(0, 89, 79, 1),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 110,
            vertical: 5,
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
            tabBorderRadius: 20,
            duration: const Duration(milliseconds: 200),
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 8,
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
                text: ' AMR21',
              ),
              const GButton(
                icon: FontAwesome5.car,
                text: ' AMR22',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
