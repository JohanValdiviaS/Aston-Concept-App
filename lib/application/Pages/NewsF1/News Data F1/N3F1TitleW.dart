// ignore_for_file: file_names

import 'package:flutter/material.dart';

class N3F1Title extends StatefulWidget {
  const N3F1Title({super.key});

  @override
  State<N3F1Title> createState() => _N3F1TitleState();
}

class _N3F1TitleState extends State<N3F1Title> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 152.5,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            width: 3,
            color: const Color.fromRGBO(0, 89, 79, 1),
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
            'https://assets.astonmartinf1.com/public/cms/7JWcqHOdkVwZ9KPt062kLq/03c424677eb4bf17c090c7bf398fee4d/F12305_122904_54I8314_copy.jpg?&h=500&w=414&fit=thumb',
          ),
        ),
      ),
    );
  }
}
