// ignore_for_file: file_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'N4F1Carousel.dart';
import 'NewsDataF1Entities.dart';

class News04F1 extends StatefulWidget {
  const News04F1({super.key});

  @override
  State<News04F1> createState() => _News04F1State();
}

class _News04F1State extends State<News04F1> {
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
                future: noticiasF1.doc('noticiaf104').get(),
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
                          const SizedBox(
                            height: 15,
                          ),
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
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: mypadding,
                            child: SizedBox(
                              width: 200,
                              child: Text(
                                snapshot.data?['titulo'],
                                style: styletitle,
                              ),
                            ),
                          ),
                          const CarouselNews04(),
                        ],
                      ),
                      const SizedBox(height: 30),
                      Padding(
                        padding: mypadding,
                        child: Text(
                          snapshot.data?['subtitulo'],
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
                      Padding(
                        padding: mypadding,
                        child: Text(
                          snapshot.data?['descripcion4'],
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
