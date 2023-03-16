// ignore_for_file: file_names
import 'package:aston_app/application/Pages/NewsF1/News%20Data%20F1/N3F1Carousel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'N3F1TitleW.dart';
import 'NewsDataF1Entities.dart';

class News03F1 extends StatefulWidget {
  const News03F1({super.key});

  @override
  State<News03F1> createState() => _News03F1State();
}

class _News03F1State extends State<News03F1> {
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
                future: noticiasF1.doc('noticiaf103').get(),
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
                      const SizedBox(height: 25),
                      Row(
                        children: [
                          Padding(
                            padding: mypadding,
                            child: SizedBox(
                              width: 200,
                              child: Text(
                                snapshot.data?['titulo'],
                                style: styletitle,
                                textAlign: TextAlign.justify,
                              ),
                            ),
                          ),
                          const N3F1Title(),
                        ],
                      ),
                      const SizedBox(height: 30),
                      Padding(
                        padding: mypadding,
                        child: Text(
                          snapshot.data?['subtitulo1'],
                          style: stylesubtitle,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      const SizedBox(height: 30),
                      Padding(
                        padding: mypadding,
                        child: Text(
                          snapshot.data?['subtitulo2'],
                          style: stylesubtitle,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      const SizedBox(height: 30),
                      Padding(
                        padding: mypadding,
                        child: Text(
                          snapshot.data?['descripcion'],
                          style: mystyle,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      const SizedBox(height: 15),
                      Padding(
                        padding: mypadding,
                        child: Text(
                          snapshot.data?['descripcion2'],
                          style: mystyle,
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
                      const CarouselNews03(),
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
                      const SizedBox(height: 20),
                      Text(
                        snapshot.data?['fecha'],
                        style: stylefecha,
                      ),
                      const SizedBox(height: 20),
                      Padding(
                        padding: mypadding,
                        child: Text(
                          snapshot.data?['copy'],
                          style: stylecopy,
                        ),
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
