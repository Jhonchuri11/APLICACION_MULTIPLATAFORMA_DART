import 'package:flutter/material.dart';

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
              "Detalle de producto JWCA",
              style: TextStyle(fontFamily: 'Italic', fontSize: 15.0),
            ),
          ),
          floatingActionButton: FloatingActionButton.extended(
            onPressed: () {
              //
            },
            label: const Text(
              "Add to cart",
              style: TextStyle(fontFamily: 'PoetsenOne'),
            ),
            icon: const Icon(Icons.shopping_cart),
          ),
          body: ListView(
            children: <Widget>[
              Image.asset(
                'assets/images/poll.jpeg',
                height: MediaQuery.of(context).size.height / 1.8,
                fit: BoxFit.cover,
              ),
              const ListTile(
                leading: Icon(Icons.thumb_up, size: 15),
                title: Text(
                  "100%",
                  style: TextStyle(fontFamily: 'PoetsenOne', fontSize: 12.0),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
                child: Text(
                  'Combo Alitas',
                  style: TextStyle(fontFamily: 'PoetsenOne', fontSize: 18.0),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  '8 Alitas, 1 Papa Cajún Regular y 1 Gaseosa 500ml. Stock mínimo 500 unidades. Salsas: 1 Ají, 1 Mayonesa y 1 Ketchup. EP DE FRANQUICIAS SAC RUC: 20545699126',
                  style: TextStyle(fontSize: 12.0, fontFamily: 'Italic'),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'S/. 20.0',
                  style: TextStyle(fontFamily: 'PoetsenOne', fontSize: 18.0),
                ),
              ),
            ],
          )),
    );
  }
}
