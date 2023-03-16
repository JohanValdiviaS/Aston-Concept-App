import 'package:aston_app/application/Pages/NewsF1/News%20Data/NewsDataEntities.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class News02 extends StatefulWidget {
  const News02({super.key});

  @override
  State<News02> createState() => _News02State();
}

class _News02State extends State<News02> {
  CollectionReference noticiasF1 =
      FirebaseFirestore.instance.collection('noticias');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              FutureBuilder(
                future: noticiasF1.doc('noticia02').get(),
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
                      const SizedBox(height: 50),
                      Padding(
                        padding: mypadding,
                        child: Text(
                          snapshot.data?['titulo'],
                          style: styletitle,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      const SizedBox(height: 30),
                      SizedBox(
                        height: 242.5,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            'https://amsc-prod-cd.azureedge.net/-/media/common/news/45c4aadefca18e3d27e0d71ceb954fbd.jpg?mw=1920&rev=b317c9f45b75435bb48b47118f8132b4&format=webp&hash=A7ED1DC7E1D12FB79B304BCDAACF58AC',
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      Padding(
                        padding: mypadding,
                        child: Text(
                          snapshot.data?['descripcion1'],
                          style: mystyle,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Padding(
                        padding: mypadding,
                        child: Text(
                          snapshot.data?['descripcion2'],
                          style: mystyle,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Padding(
                        padding: mypadding,
                        child: Text(
                          snapshot.data?['descripcion3'],
                          style: mystyle,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Padding(
                        padding: mypadding,
                        child: Text(
                          snapshot.data?['descripcion4'],
                          style: mystyle,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Padding(
                        padding: mypadding,
                        child: Text(
                          snapshot.data?['descripcion6'],
                          style: mystyle,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Padding(
                        padding: mypadding,
                        child: Text(
                          snapshot.data?['descripcion7'],
                          style: mystyle,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Padding(
                        padding: mypadding,
                        child: Text(
                          snapshot.data?['descripcion8'],
                          style: mystyle,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Padding(
                        padding: mypadding,
                        child: Text(
                          snapshot.data?['descripcion9'],
                          style: mystyle,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Padding(
                        padding: mypadding,
                        child: Text(
                          snapshot.data?['descripcion10'],
                          style: mystyle,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Padding(
                        padding: mypadding,
                        child: Text(
                          snapshot.data?['descripcion11'],
                          style: mystyle,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Padding(
                        padding: mypadding,
                        child: Text(
                          snapshot.data?['descripcion12'],
                          style: mystyle,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Padding(
                        padding: mypadding,
                        child: Text(
                          snapshot.data?['descripcion13'],
                          style: mystyle,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Padding(
                        padding: mypadding,
                        child: Text(
                          snapshot.data?['descripcion14'],
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
