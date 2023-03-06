// ignore_for_file: file_names

import 'package:aston_app/application/Pages/NewsF1/News%20Data%20F1/News03F1.dart';
import 'package:aston_app/application/Pages/NewsF1/News%20Data%20F1/News04F1.dart';
import 'package:aston_app/application/Pages/NewsF1/News%20Data/noticia01.dart';
import 'package:aston_app/application/Pages/NewsF1/News%20Data/noticia02.dart';
import 'package:aston_app/application/Pages/NewsF1/News%20Data/noticia03.dart';
import 'package:aston_app/application/Pages/NewsF1/News%20Data/noticia04.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AstonNewsPage extends StatefulWidget {
  const AstonNewsPage({super.key});

  @override
  State<AstonNewsPage> createState() => _AstonNewsPageState();
}

class _AstonNewsPageState extends State<AstonNewsPage> {
  CollectionReference noticiasF1 =
      FirebaseFirestore.instance.collection('titulosnoticias');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              FutureBuilder(
                future: noticiasF1.doc('noticias').get(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 320,
                          bottom: 320,
                        ),
                        child: Column(
                          children: [
                            Text(
                              "Loading...",
                              style: GoogleFonts.ptSans(
                                fontSize: 28,
                                fontWeight: FontWeight.w700,
                                color: const Color.fromRGBO(0, 89, 79, 1),
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            const CircularProgressIndicator(
                              color: Color.fromRGBO(0, 89, 79, 1),
                            ),
                          ],
                        ),
                      ),
                    );
                  }
                  if (snapshot.hasError) {
                    return const Column(
                      children: [
                        Text('Something went wrong'),
                        SizedBox(
                          height: 15,
                        ),
                        CircularProgressIndicator(
                          color: Color.fromRGBO(0, 89, 79, 1),
                        ),
                      ],
                    );
                  }

                  return Column(
                    children: [
                      SizedBox(
                        height: 150,
                        child: Image.network(
                          'https://logos-world.net/wp-content/uploads/2021/03/Aston-Martin-Logo-1972-1984.png',
                        ),
                      ),
                      Container(
                        width: 235,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(0, 89, 79, 1),
                          borderRadius: BorderRadius.circular(
                            10,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Noticias',
                            style: GoogleFonts.josefinSlab(
                              fontSize: 36,
                              fontWeight: FontWeight.w700,
                              color: const Color.fromRGBO(193, 255, 93, 1),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(0, 89, 79, 1),
                          borderRadius: BorderRadius.circular(
                            10,
                          ),
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 130,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(
                                        10,
                                      ),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            15,
                                          ),
                                        ),
                                        width: 150,
                                        child: Image.network(
                                          'https://amsc-prod-cd.azureedge.net/-/media/common/news/67eeb8c38715f83b73f9c0a0c0a2a985.jpg?mw=1920&rev=043fd520d6bd44c1a282f1e243d9b548&format=webp&hash=C7083D803248AAE29E12515A08EBAE4C',
                                          fit: BoxFit.fitWidth,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    SizedBox(
                                      width: 210,
                                      child: Text(
                                        snapshot.data?['noticiasn01'],
                                        style: GoogleFonts.roboto(
                                          fontSize: 17,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                        ),
                                        textAlign: TextAlign.justify,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 40,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const News01(),
                                    ),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      const Color.fromRGBO(193, 255, 93, 1),
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                  ),
                                ),
                                child: const Text(
                                  'Ver mas detalles',
                                  style: TextStyle(
                                    color: Color.fromRGBO(0, 89, 79, 1),
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(0, 89, 79, 1),
                          borderRadius: BorderRadius.circular(
                            10,
                          ),
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 140,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(
                                        10,
                                      ),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            15,
                                          ),
                                        ),
                                        width: 150,
                                        child: Image.network(
                                          'https://amsc-prod-cd.azureedge.net/-/media/common/news/45c4aadefca18e3d27e0d71ceb954fbd.jpg?mw=1920&rev=b317c9f45b75435bb48b47118f8132b4&format=webp&hash=A7ED1DC7E1D12FB79B304BCDAACF58AC',
                                          fit: BoxFit.fitWidth,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    SizedBox(
                                      width: 210,
                                      child: Text(
                                        snapshot.data?['noticiasn02'],
                                        style: GoogleFonts.roboto(
                                          fontSize: 17,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                        ),
                                        textAlign: TextAlign.justify,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 40,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const News02(),
                                    ),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      const Color.fromRGBO(193, 255, 93, 1),
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                  ),
                                ),
                                child: const Text(
                                  'Ver mas detalles',
                                  style: TextStyle(
                                    color: Color.fromRGBO(0, 89, 79, 1),
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(0, 89, 79, 1),
                          borderRadius: BorderRadius.circular(
                            10,
                          ),
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 140,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(
                                        10,
                                      ),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            15,
                                          ),
                                        ),
                                        width: 150,
                                        child: Image.network(
                                          'https://amsc-prod-cd.azureedge.net/-/media/common/news/1f02ecce2a1246f6d8473bfab1b30b5a.jpg?mw=1920&rev=96e0384402d347c4b93de7eed36e2b5b&format=webp&hash=F031F7AF718D6B48C50711BC4A93C6C1',
                                          fit: BoxFit.fitWidth,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    SizedBox(
                                      width: 210,
                                      child: Text(
                                        snapshot.data?['noticiasn03'],
                                        style: GoogleFonts.roboto(
                                          fontSize: 17,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                        ),
                                        textAlign: TextAlign.justify,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 40,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const News03(),
                                    ),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      const Color.fromRGBO(193, 255, 93, 1),
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                  ),
                                ),
                                child: const Text(
                                  'Ver mas detalles',
                                  style: TextStyle(
                                    color: Color.fromRGBO(0, 89, 79, 1),
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(0, 89, 79, 1),
                          borderRadius: BorderRadius.circular(
                            10,
                          ),
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 140,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(
                                        10,
                                      ),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            15,
                                          ),
                                        ),
                                        width: 150,
                                        child: Image.network(
                                          'https://amsc-prod-cd.azureedge.net/-/media/common/news/b413b54c6c874e6d02fdec58ebd10331.jpg?mw=1920&rev=a76c1f92ae8944238cb4f8b7668eb4e1&format=webp&hash=49AD2FEBBA31F6E8E343858FC9AF8E89',
                                          fit: BoxFit.fitWidth,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    SizedBox(
                                      width: 210,
                                      child: Text(
                                        snapshot.data?['noticiasn04'],
                                        style: GoogleFonts.roboto(
                                          fontSize: 17,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                        ),
                                        textAlign: TextAlign.justify,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 40,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const News04(),
                                    ),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      const Color.fromRGBO(193, 255, 93, 1),
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                  ),
                                ),
                                child: const Text(
                                  'Ver mas detalles',
                                  style: TextStyle(
                                    color: Color.fromRGBO(0, 89, 79, 1),
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 150,
                        child: Image.network(
                          'https://logos-world.net/wp-content/uploads/2021/03/Aston-Martin-Logo-1972-1984.png',
                        ),
                      ),
                      Container(
                        width: 235,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(0, 89, 79, 1),
                          borderRadius: BorderRadius.circular(
                            10,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Noticias F1',
                            style: GoogleFonts.josefinSlab(
                              fontSize: 36,
                              fontWeight: FontWeight.w700,
                              color: const Color.fromRGBO(193, 255, 93, 1),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(161, 211, 80, 1),
                          borderRadius: BorderRadius.circular(
                            10,
                          ),
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 180,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 160,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          15,
                                        ),
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(
                                          10,
                                        ),
                                        child: Image.network(
                                          'https://assets.astonmartinf1.com/public/cms/57Z4S0KuT0yK33v9zrPbfW/e6af96f8d10fd9e690be0d0ea37e31b1/AM23_CAR_2437_TC_copymb.jpg?&h=500&w=414&fit=thumb',
                                          fit: BoxFit.fitWidth,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Column(
                                      children: [
                                        SizedBox(
                                          height: 120,
                                          child: Center(
                                            child: SizedBox(
                                              width: 210,
                                              child: Text(
                                                snapshot.data?['noticiasf101'],
                                                style: GoogleFonts.roboto(
                                                  fontSize: 17,
                                                  color: const Color.fromRGBO(
                                                      0, 89, 79, 1),
                                                  fontWeight: FontWeight.w600,
                                                ),
                                                textAlign: TextAlign.justify,
                                              ),
                                            ),
                                          ),
                                        ),
                                        ElevatedButton(
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    const News03F1(),
                                              ),
                                            );
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                const Color.fromRGBO(
                                                    0, 89, 79, 1),
                                            shape: const RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(10),
                                              ),
                                            ),
                                          ),
                                          child: const Text(
                                            'Ver mas detalles',
                                            style: TextStyle(
                                              color: Color.fromRGBO(
                                                  193, 255, 93, 1),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(161, 211, 80, 1),
                          borderRadius: BorderRadius.circular(
                            10,
                          ),
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 180,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 160,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          15,
                                        ),
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(
                                          10,
                                        ),
                                        child: Image.network(
                                          'https://assets.astonmartinf1.com/public/cms/2bnE8twc8G0gEYeLXcw3iO/74484db1bf7a7950cb9cebd064610dc1/F12303_172722_54I7923.jpg?&h=500&w=414&fit=thumb',
                                          fit: BoxFit.fitWidth,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Column(
                                      children: [
                                        SizedBox(
                                          height: 120,
                                          child: Center(
                                            child: SizedBox(
                                              width: 210,
                                              child: Text(
                                                snapshot.data?['noticiasf102'],
                                                style: GoogleFonts.roboto(
                                                  fontSize: 17,
                                                  color: const Color.fromRGBO(
                                                      0, 89, 79, 1),
                                                  fontWeight: FontWeight.w600,
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                          ),
                                        ),
                                        ElevatedButton(
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    const News03F1(),
                                              ),
                                            );
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                const Color.fromRGBO(
                                                    0, 89, 79, 1),
                                            shape: const RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(10),
                                              ),
                                            ),
                                          ),
                                          child: const Text(
                                            'Ver mas detalles',
                                            style: TextStyle(
                                              color: Color.fromRGBO(
                                                  193, 255, 93, 1),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(161, 211, 80, 1),
                          borderRadius: BorderRadius.circular(
                            10,
                          ),
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 180,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 160,
                                      decoration: BoxDecoration(
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
                                          fit: BoxFit.fitWidth,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Column(
                                      children: [
                                        SizedBox(
                                          height: 120,
                                          child: Center(
                                            child: SizedBox(
                                              width: 210,
                                              child: Text(
                                                snapshot.data?['noticiasf103'],
                                                style: GoogleFonts.roboto(
                                                  fontSize: 17,
                                                  color: const Color.fromRGBO(
                                                      0, 89, 79, 1),
                                                  fontWeight: FontWeight.w600,
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                          ),
                                        ),
                                        ElevatedButton(
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    const News03F1(),
                                              ),
                                            );
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                const Color.fromRGBO(
                                                    0, 89, 79, 1),
                                            shape: const RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(10),
                                              ),
                                            ),
                                          ),
                                          child: const Text(
                                            'Ver mas detalles',
                                            style: TextStyle(
                                              color: Color.fromRGBO(
                                                  193, 255, 93, 1),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(161, 211, 80, 1),
                          borderRadius: BorderRadius.circular(
                            10,
                          ),
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 180,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 160,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          15,
                                        ),
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(
                                          10,
                                        ),
                                        child: Image.network(
                                          'https://assets.astonmartinf1.com/public/cms/1WQCbPorDDXRYB8CMowIZl/4bc4ea913462aa5d15baec56b3048f1a/Z91_1776-Edit_2.jpg?&h=500&w=414&fit=thumb',
                                          fit: BoxFit.fitWidth,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Column(
                                      children: [
                                        SizedBox(
                                          height: 120,
                                          child: Center(
                                            child: SizedBox(
                                              width: 210,
                                              child: Text(
                                                snapshot.data?['noticiasf104'],
                                                style: GoogleFonts.roboto(
                                                  fontSize: 17,
                                                  color: const Color.fromRGBO(
                                                      0, 89, 79, 1),
                                                  fontWeight: FontWeight.w600,
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                          ),
                                        ),
                                        ElevatedButton(
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    const News04F1(),
                                              ),
                                            );
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                const Color.fromRGBO(
                                                    0, 89, 79, 1),
                                            shape: const RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(10),
                                              ),
                                            ),
                                          ),
                                          child: const Text(
                                            'Ver mas detalles',
                                            style: TextStyle(
                                              color: Color.fromRGBO(
                                                  193, 255, 93, 1),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
