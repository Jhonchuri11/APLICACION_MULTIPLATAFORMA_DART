import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp01());
}

class MyApp01 extends StatelessWidget {
  const MyApp01({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Mi lista de imagenes JWCA"),
          ),
          body: ListView(
            children: <Widget>[
              ListTile(
                leading: Image.asset('assets/images/tigre.jpg',
                    width: 50, fit: BoxFit.cover),
                title: const Text(
                  "El tigre",
                  style: TextStyle(fontSize: 20, fontFamily: 'PoetsenOne'),
                ),
              ),
              ListTile(
                leading: Image.asset('assets/images/juane.jpeg',
                    width: 50, fit: BoxFit.cover),
                title: const Text(
                  "El juane",
                  style: TextStyle(fontSize: 20, fontFamily: 'PoetsenOne'),
                ),
              ),
              ListTile(
                leading: Image.asset('assets/images/paz.jpg',
                    width: 50, fit: BoxFit.cover),
                title: const Text(
                  "La ciudad de La Paz",
                  style: TextStyle(fontSize: 20, fontFamily: 'PoetsenOne'),
                ),
              )
            ],
          )),
    );
  }
}
