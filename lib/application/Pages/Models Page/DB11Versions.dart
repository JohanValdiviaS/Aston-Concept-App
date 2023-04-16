// ignore_for_file: file_names, camel_case_types

import 'package:aston_app/application/Pages/Versions/DB11%20Versions/V12Coupe.dart';
import 'package:aston_app/application/Pages/Versions/DB11%20Versions/V8Coupe.dart';
import 'package:aston_app/application/Pages/Versions/DB11%20Versions/V8Volante.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class DB11Versions extends StatefulWidget {
  const DB11Versions({super.key});

  @override
  State<DB11Versions> createState() => _DB11VersionsState();
}

class _DB11VersionsState extends State<DB11Versions> {
  int currentIndex = 0;
  final screens = [
    const V12Coupe(),
    const V8Coupe(),
    const V8Volante(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: Container(
        color: const Color.fromRGBO(0, 89, 79, 1),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 50,
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
            tabBorderRadius: 15,
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
                text: ' V12 Coupe',
              ),
              const GButton(
                icon: FontAwesome5.car,
                text: ' V8 Coupe',
              ),
              const GButton(
                icon: FontAwesome5.car,
                text: ' V8 Volante',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
