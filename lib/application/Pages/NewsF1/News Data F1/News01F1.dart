// ignore_for_file: file_names
import 'package:aston_app/application/Pages/NewsF1/News%20Data%20F1/N01Widgets/N1F1Carousel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'NewsDataF1Entities.dart';

class News01F1 extends StatefulWidget {
  const News01F1({super.key});

  @override
  State<News01F1> createState() => _News01F1State();
}

class _News01F1State extends State<News01F1> {
  CollectionReference noticiasF1 =
      FirebaseFirestore.instance.collection('noticiasF1');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              FutureBuilder(
                future: noticiasF1.doc('noticiaf101').get(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Padding(
                      padding: paddingloading,
                      child: Column(
                        children: [
                          Text(
                            "Loading...",
                            style: styleloading,
                          ),
                          const SizedBox(height: 15),
                          const CircularProgressIndicator(
                            color: Color.fromRGBO(0, 89, 79, 1),
                          ),
                        ],
                      ),
                    );
                  }
                  if (snapshot.hasError) {
                    return const Column(
                      children: [
                        Text('Something went wrong'),
                        SizedBox(height: 15),
                        CircularProgressIndicator(
                          color: Color.fromRGBO(0, 89, 79, 1),
                        ),
                      ],
                    );
                  }

                  return Column(
                    children: [
                      const SizedBox(height: 15),
                      SizedBox(
                        height: 200,
                        child: Image.network(
                          'https://assets.astonmartinf1.com/public/cms/57Z4S0KuT0yK33v9zrPbfW/e6af96f8d10fd9e690be0d0ea37e31b1/AM23_CAR_2437_TC_copymb.jpg?&h=500&w=414&fit=thumb',
                        ),
                      ),
                      const SizedBox(height: 5),
                      Padding(
                        padding: mypadding,
                        child: Text(
                          snapshot.data?['titulo'],
                          style: styletitle,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      const SizedBox(height: 30),
                      Padding(
                        padding: mypadding,
                        child: Column(
                          children: [
                            Center(
                              child: Text(
                                snapshot.data?['subtitulo'],
                                style: stylesubtitle,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        height: 202.5,
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
                              'https://assets.astonmartinf1.com/public/cms/5E97Dj3jkH9CloAmXIEbl/ca19d73bfccc9aba2ecbbf14ebb58dd3/F12303_172038_U1A8748_copyhd.jpg?&h=800&w=1440&fit=thumb',
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Padding(
                        padding: mypadding,
                        child: Text(
                          snapshot.data?['descripcion'],
                          style: GoogleFonts.roboto(
                            fontSize: 17,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      const SizedBox(height: 15),
                      Padding(
                        padding: mypadding,
                        child: Text(
                          snapshot.data?['descripcion2'],
                          style: GoogleFonts.roboto(
                            fontSize: 17,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      const SizedBox(height: 15),
                      Padding(
                        padding: mypadding,
                        child: Text(
                          snapshot.data?['descripcion3'],
                          style: mystyle,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      const SizedBox(height: 15),
                      Padding(
                        padding: mypadding,
                        child: Text(
                          snapshot.data?['descripcion4'],
                          style: mystyle,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      const SizedBox(height: 15),
                      Padding(
                        padding: mypadding,
                        child: Text(
                          snapshot.data?['descripcion5'],
                          style: mystyle,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      const SizedBox(height: 15),
                      Padding(
                        padding: mypadding,
                        child: Text(
                          snapshot.data?['descripcion6'],
                          style: mystyle,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      const SizedBox(height: 15),
                      Padding(
                        padding: mypadding,
                        child: Text(
                          snapshot.data?['descripcion7'],
                          style: mystyle,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      const SizedBox(height: 15),
                      Padding(
                        padding: mypadding,
                        child: Text(
                          snapshot.data?['descripcion8'],
                          style: mystyle,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      const SizedBox(height: 15),
                      Padding(
                        padding: mypadding,
                        child: Text(
                          snapshot.data?['descripcion9'],
                          style: mystyle,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      const SizedBox(height: 15),
                      Padding(
                        padding: mypadding,
                        child: Text(
                          snapshot.data?['descripcion10'],
                          style: mystyle,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      const SizedBox(height: 15),
                      const CarouselNews01(),
                      const SizedBox(height: 15),
                      Padding(
                        padding: mypadding,
                        child: Text(
                          snapshot.data?['descripcion11'],
                          style: mystyle,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      const SizedBox(height: 15),
                      Padding(
                        padding: mypadding,
                        child: Text(
                          snapshot.data?['descripcion12'],
                          style: mystyle,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      const SizedBox(height: 15),
                      Padding(
                        padding: mypadding,
                        child: Text(
                          snapshot.data?['descripcion13'],
                          style: mystyle,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      const SizedBox(height: 15),
                      Padding(
                        padding: mypadding,
                        child: Text(
                          snapshot.data?['descripcion14'],
                          style: mystyle,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      const SizedBox(height: 15),
                      Padding(
                        padding: mypadding,
                        child: Text(
                          snapshot.data?['descripcion15'],
                          style: mystyle,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      const SizedBox(height: 15),
                      Padding(
                        padding: mypadding,
                        child: Text(
                          snapshot.data?['descripcion16'],
                          style: mystyle,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      const SizedBox(height: 15),
                      Padding(
                        padding: mypadding,
                        child: Text(
                          snapshot.data?['descripcion17'],
                          style: mystyle,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      const SizedBox(height: 15),
                      Padding(
                        padding: mypadding,
                        child: Text(
                          snapshot.data?['descripcion18'],
                          style: mystyle,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      const SizedBox(height: 15),
                      Padding(
                        padding: mypadding,
                        child: Text(
                          snapshot.data?['descripcion19'],
                          style: mystyle,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      const SizedBox(height: 15),
                      Padding(
                        padding: mypadding,
                        child: Text(
                          snapshot.data?['descripcion20'],
                          style: mystyle,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        snapshot.data?['fecha'],
                        style: stylefecha,
                      ),
                      const SizedBox(height: 20),
                      Text(
                        snapshot.data?['copy'],
                        style: stylecopy,
                      ),
                      const SizedBox(height: 30),
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
