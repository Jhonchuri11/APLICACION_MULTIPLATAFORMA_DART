import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp01());
}

class MyApp01 extends StatelessWidget {
  const MyApp01({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Galeria de imagenes JWCA",
            style: TextStyle(fontFamily: 'Italic', fontSize: 15.0),
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            //
          },
          label: const Text(
            "Add to images",
            style: TextStyle(fontFamily: 'PoetsenOne'),
          ),
          icon: const Icon(Icons.shopping_cart),
        ),
        body: ListView(
          children: <Widget>[
            Stack(
              alignment: Alignment.center,
              children: <Widget>[
                SvgPicture.asset(
                  "assets/images/cat.svg",
                  width: 200,
                ),
                const Positioned(
                  bottom: 10,
                  child: Text(
                    "SVG: GATO",
                    style: TextStyle(
                        fontFamily: 'Italic', fontSize: 20, color: Colors.red),
                  ),
                )
              ],
            ),
            Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Image.asset("assets/images/juane.jpeg"),
                const Positioned(
                  bottom: 10,
                  child: Text(
                    "JPEG Juane",
                    style: TextStyle(fontFamily: 'PoetsenOne', fontSize: 20),
                  ),
                )
              ],
            ),
            Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Image.asset(
                  "assets/images/let.png",
                  width: 150,
                ),
                const Positioned(
                  bottom: 10,
                  child: Text(
                    "PNG PLUMA",
                    style: TextStyle(
                        fontFamily: 'PoetsenOne',
                        fontSize: 20,
                        color: Colors.blue),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
