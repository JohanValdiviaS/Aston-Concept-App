// ignore_for_file: file_names, camel_case_types

import 'package:aston_app/application/Pages/Start%20Screens/AstonModels.dart';
import 'package:aston_app/application/Pages/Start%20Screens/AstonNews.dart';
import 'package:aston_app/application/Pages/Start%20Screens/StartPage.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  final screens = [
    const StartPage(),
    const AstonModels(),
    const AstonNewsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: Container(
        color: const Color.fromRGBO(0, 89, 79, 1),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 70,
            vertical: 5,
          ),
          child: GNav(
            backgroundColor: const Color.fromRGBO(0, 89, 79, 1),
            color: Colors.white,
            activeColor: const Color.fromRGBO(143, 216, 26, 1),
            tabBackgroundColor: const Color.fromRGBO(0, 89, 79, 1),
            tabBorder: Border.all(
              color: const Color.fromRGBO(193, 255, 93, 1),
              width: 2.5,
            ),
            tabBorderRadius: 15,
            duration: const Duration(milliseconds: 200),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            gap: 3,
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
                icon: Icons.home,
                text: 'Inicio',
              ),
              const GButton(
                icon: Icons.directions_car_rounded,
                text: 'Modelos',
              ),
              const GButton(
                icon: Icons.newspaper_rounded,
                text: 'Noticias',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
