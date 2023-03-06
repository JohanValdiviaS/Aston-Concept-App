// ignore_for_file: file_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:google_fonts/google_fonts.dart';

class DBS707 extends StatefulWidget {
  const DBS707({super.key});

  @override
  State<DBS707> createState() => _DBS707State();
}

class _DBS707State extends State<DBS707> {
  CollectionReference noticiasF1 =
      FirebaseFirestore.instance.collection('modelos_autos');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            FutureBuilder(
              future: noticiasF1.doc('DBS707').get(),
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
                              color: const Color.fromRGBO(0, 146, 129, 1),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const CircularProgressIndicator(
                            color: Color.fromRGBO(0, 146, 129, 1),
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
                        color: Color.fromRGBO(0, 146, 129, 1),
                      ),
                    ],
                  );
                }

                return Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    //Logo Aston Martin
                    SizedBox(
                      height: 140,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Container(
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
                              'https://logos-world.net/wp-content/uploads/2021/03/Aston-Martin-Logo-1972-1984.png',
                            ),
                          ),
                        ),
                      ),
                    ),

                    // Img Auto
                    Image.network(
                      'https://configurator.api-services.astonmartin.com/static/assets/modelselection/am709@3.png',
                    ),

                    //Img Modelo Auto
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 25,
                        right: 25,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Text(
                              snapshot.data?['nombre'],
                              style: GoogleFonts.roboto(
                                fontSize: 26,
                                color: Colors.black,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 15),

                    //Descrición Auto
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 25,
                        right: 25,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Text(
                              snapshot.data?['descripcion'],
                              style: GoogleFonts.roboto(
                                fontSize: 16,
                                color: Colors.black,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 15),
                    // Datos Auto
                    Center(
                      child: Text(
                        'Performance',
                        style: GoogleFonts.roboto(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 15,
                        left: 15,
                      ),
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          const SizedBox(
                            child: Center(
                              child: Column(
                                children: [
                                  Icon(
                                    FontAwesome5.tachometer_alt,
                                    color: Color.fromRGBO(0, 146, 129, 1),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Icon(
                                    FontAwesome5.bolt,
                                    color: Color.fromRGBO(0, 146, 129, 1),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Icon(
                                    FontAwesome5.stopwatch,
                                    color: Color.fromRGBO(0, 146, 129, 1),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          SizedBox(
                            child: Column(
                              children: [
                                Container(
                                  width: 240,
                                  height: 5,
                                  decoration: const BoxDecoration(
                                    color: Color.fromRGBO(0, 146, 129, 1),
                                  ),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Container(
                                  width: 240,
                                  height: 5,
                                  decoration: const BoxDecoration(
                                    color: Color.fromRGBO(0, 146, 129, 1),
                                  ),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Container(
                                  width: 240,
                                  height: 5,
                                  decoration: const BoxDecoration(
                                    color: Color.fromRGBO(0, 146, 129, 1),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            child: Column(
                              children: [
                                Text(
                                  snapshot.data?['velocidad'],
                                  style: GoogleFonts.roboto(
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  snapshot.data?['potencia'],
                                  style: GoogleFonts.roboto(
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  snapshot.data?['arranque'],
                                  style: GoogleFonts.roboto(
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
