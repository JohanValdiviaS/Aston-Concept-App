import 'package:aston_app/application/Pages/NewsF1/News%20Data/NewsDataEntities.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class News03 extends StatefulWidget {
  const News03({super.key});

  @override
  State<News03> createState() => _News03State();
}

class _News03State extends State<News03> {
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
                future: noticiasF1.doc('noticia03').get(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Padding(
                      padding: const EdgeInsets.only(
                        top: 320,
                        bottom: 320,
                      ),
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
                          borderRadius: BorderRadius.circular(
                            10,
                          ),
                          child: Image.network(
                            'https://amsc-prod-cd.azureedge.net/-/media/common/news/1f02ecce2a1246f6d8473bfab1b30b5a.jpg?mw=1920&rev=96e0384402d347c4b93de7eed36e2b5b&format=webp&hash=F031F7AF718D6B48C50711BC4A93C6C1',
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
                      Padding(
                        padding: mypadding,
                        child: Text(
                          snapshot.data?['descripcion15'],
                          style: mystyle,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Padding(
                        padding: mypadding,
                        child: Text(
                          snapshot.data?['descripcion16'],
                          style: mystyle,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Padding(
                        padding: mypadding,
                        child: Text(
                          snapshot.data?['descripcion17'],
                          style: mystyle,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Padding(
                        padding: mypadding,
                        child: Text(
                          snapshot.data?['descripcion18'],
                          style: mystyle,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Padding(
                        padding: mypadding,
                        child: Text(
                          snapshot.data?['descripcion19'],
                          style: mystyle,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Padding(
                        padding: mypadding,
                        child: Text(
                          snapshot.data?['descripcion20'],
                          style: mystyle,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Padding(
                        padding: mypadding,
                        child: Text(
                          snapshot.data?['descripcion21'],
                          style: mystyle,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Padding(
                        padding: mypadding,
                        child: Text(
                          snapshot.data?['descripcion22'],
                          style: mystyle,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Padding(
                        padding: mypadding,
                        child: Text(
                          snapshot.data?['descripcion23'],
                          style: mystyle,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Padding(
                        padding: mypadding,
                        child: Text(
                          snapshot.data?['descripcion24'],
                          style: mystyle,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Padding(
                        padding: mypadding,
                        child: Text(
                          snapshot.data?['descripcion25'],
                          style: mystyle,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Padding(
                        padding: mypadding,
                        child: Text(
                          snapshot.data?['descripcion26'],
                          style: mystyle,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Padding(
                        padding: mypadding,
                        child: Text(
                          snapshot.data?['descripcion27'],
                          style: mystyle,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      const SizedBox(height: 30),
                      Text(
                        snapshot.data?['fecha'],
                        style: stylefecha,
                      ),
                      const SizedBox(height: 30),
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
