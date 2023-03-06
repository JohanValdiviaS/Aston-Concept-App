// ignore_for_file: file_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AMR22 extends StatefulWidget {
  const AMR22({super.key});

  @override
  State<AMR22> createState() => _AMR22State();
}

class _AMR22State extends State<AMR22> {
  CollectionReference noticiasF1 =
      FirebaseFirestore.instance.collection('F1_modelos');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            FutureBuilder(
              future: noticiasF1.doc('amr22').get(),
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
                      height: 10,
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

                    // Img F1
                    Image.network(
                      'https://www.formula1.com/content/dam/fom-website/teams/2023/teamcar-astonmartin.png.transform/4col/image.png',
                      fit: BoxFit.fitWidth,
                    ),

                    //Img Modelo
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
                                color: const Color.fromRGBO(0, 89, 79, 1),
                                fontWeight: FontWeight.w700,
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
                              'Pilotos',
                              style: GoogleFonts.roboto(
                                fontSize: 26,
                                color: const Color.fromRGBO(0, 89, 79, 1),
                                fontWeight: FontWeight.w700,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 15),

                    Padding(
                      padding: const EdgeInsets.only(
                        left: 25,
                        right: 25,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(
                                child: Container(
                                  width: 160,
                                  decoration: BoxDecoration(
                                    color: const Color.fromRGBO(0, 89, 79, 1),
                                    borderRadius: BorderRadius.circular(
                                      10,
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      snapshot.data?['piloto1'],
                                      style: GoogleFonts.roboto(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color: const Color.fromRGBO(
                                            193, 255, 93, 1),
                                      ),
                                      textAlign: TextAlign.justify,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                height: 230,
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
                                      'https://www.f1fantasytracker.com/Images//Drivers/2021/StrollFull.png',
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 25,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 160,
                                decoration: BoxDecoration(
                                  color: const Color.fromRGBO(0, 89, 79, 1),
                                  borderRadius: BorderRadius.circular(
                                    10,
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    snapshot.data?['piloto2'],
                                    style: GoogleFonts.roboto(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color:
                                          const Color.fromRGBO(193, 255, 93, 1),
                                    ),
                                    textAlign: TextAlign.justify,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                height: 230,
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
                                      'https://www.f1fantasytracker.com/Images//Drivers/2021/VettelFull.png',
                                    ),
                                  ),
                                ),
                              ),
                            ],
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
    );
  }
}
