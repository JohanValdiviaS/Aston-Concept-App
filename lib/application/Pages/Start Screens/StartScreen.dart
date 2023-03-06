// ignore_for_file: file_names

import 'package:aston_app/application/CarPage/Models%20Cars%20View/DB11view.dart';
import 'package:aston_app/application/CarPage/Models%20Cars%20View/DBSview.dart';
import 'package:aston_app/application/CarPage/Models%20Cars%20View/DBXview.dart';
import 'package:aston_app/application/CarPage/Models%20Cars%20View/Vantageview.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        // Modelo Auto DBS Supperleggera
        Padding(
          padding: EdgeInsets.all(8),
          child: DBSview(),
        ),
        // Modelo Auto DB11
        Padding(
          padding: EdgeInsets.all(8),
          child: DB11view(),
        ),

        // Modelo Auto Vantage
        Padding(
          padding: EdgeInsets.all(8),
          child: Vantageview(),
        ),

        // Modelo Auto DBX
        Padding(
          padding: EdgeInsets.all(8),
          child: DBXview(),
        ),
      ],
    );
  }
}
