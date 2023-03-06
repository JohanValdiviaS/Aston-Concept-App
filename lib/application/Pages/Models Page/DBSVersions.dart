// ignore_for_file: file_names, camel_case_types

import 'package:aston_app/application/Pages/Versions/DBS%20Versions/DBS707.dart';
import 'package:aston_app/application/Pages/Versions/DBS%20Versions/DBSCoupe.dart';
import 'package:aston_app/application/Pages/Versions/DBS%20Versions/DBSVolante.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class DBSVersions extends StatefulWidget {
  const DBSVersions({super.key});

  @override
  State<DBSVersions> createState() => _DBSVersionsState();
}

class _DBSVersionsState extends State<DBSVersions> {
  int currentIndex = 0;
  final screens = [
    const DBSCoupe(),
    const DBSVolante(),
    const DBS707(),
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
                text: ' Coupe',
              ),
              const GButton(
                icon: FontAwesome5.car,
                text: ' Volante',
              ),
              const GButton(
                icon: FontAwesome5.car,
                text: ' DBS 707',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
