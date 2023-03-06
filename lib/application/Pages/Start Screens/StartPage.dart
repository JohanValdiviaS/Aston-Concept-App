// ignore_for_file: file_names

import 'package:aston_app/application/CarPage/Models%20Cars%20View/GeneralView.dart';
import 'package:aston_app/application/Pages/Start%20Screens/AstonF1.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 150,
              child: Image.network(
                'https://logos-world.net/wp-content/uploads/2021/03/Aston-Martin-Logo-1972-1984.png',
              ),
            ),
            Text(
              'Bienvenido',
              style: GoogleFonts.josefinSlab(
                fontSize: 36,
                fontWeight: FontWeight.w700,
                color: const Color.fromRGBO(0, 89, 79, 1),
              ),
            ),
            SizedBox(
              height: 260,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Image.network(
                  'https://assets.stickpng.com/images/580b585b2edbce24c47b2c14.png',
                ),
              ),
            ),

            // Modelo Auto DBS Supperleggera
            const Padding(
              padding: EdgeInsets.all(8),
              child: GeneralView(),
            ),

            // Formula 1
            const Padding(
              padding: EdgeInsets.all(8),
              child: AstonF1view(),
            ),
          ],
        ),
      ),
    );
  }
}
