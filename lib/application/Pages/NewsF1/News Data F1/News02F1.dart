// ignore_for_file: file_names
import 'package:aston_app/application/Pages/NewsF1/News%20Data%20F1/N2F1Carousel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'NewsDataF1Entities.dart';

class News02F1 extends StatefulWidget {
  const News02F1({super.key});

  @override
  State<News02F1> createState() => _News02F1State();
}

class _News02F1State extends State<News02F1> {
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
                future: noticiasF1.doc('noticiaf102').get(),
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
                        SizedBox(height: 15),
                        CircularProgressIndicator(
                          color: Color.fromRGBO(0, 89, 79, 1),
                        ),
                      ],
                    );
                  }

                  return Column(
                    children: [
                      const SizedBox(height: 20),
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
                          SizedBox(
                            height: 150,
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
                                  'https://assets.astonmartinf1.com/public/cms/2bnE8twc8G0gEYeLXcw3iO/74484db1bf7a7950cb9cebd064610dc1/F12303_172722_54I7923.jpg?&h=500&w=414&fit=thumb',
                                ),
                              ),
                            ),
                          ),
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
                      const SizedBox(height: 20),
                      SizedBox(
                        height: 242.5,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                            10,
                          ),
                          child: Image.network(
                            'https://assets.astonmartinf1.com/public/cms/4InqnquS12An5BFCin3qX9/40ad720799937b69a819de361646f9b5/F12303_171809_U1A8710_copy.jpg?&h=600&w=900&fm=jpg&fit=thumb',
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      Padding(
                        padding: mypadding,
                        child: Text(
                          snapshot.data?['descripción'],
                          style: mystyle,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      const SizedBox(height: 15),
                      const CarouselNews02(),
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
