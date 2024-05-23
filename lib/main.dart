import 'package:flutter/material.dart';

void main() {
  runApp(const Myapp10());
}

class Movie {
  final String title;
  final String fecha;
  final String genero;
  final Image imagen;
  final String duracion;

  Movie(this.title, this.fecha, this.genero, this.imagen, this.duracion);
}

List<Movie> movies = [
  Movie("IROMAN", "2023-01-12", "Acción", Image.network(""), "2:30"),
  Movie("IROMAN", "2023-01-12", "Acción", Image.network(""), "2:30"),
  Movie("IROMAN", "2023-01-12", "Acción", Image.network(""), "2:30"),
  Movie("IROMAN", "2023-01-12", "Acción", Image.network(""), "2:30"),
];

class Myapp10 extends StatelessWidget {
  const Myapp10({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "JWCA",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("CARTELERA MOVIE JWCA"),
        ),
        body: const EventCardMovie(),
      ),
    );
  }
}

class EventCardMovie extends StatelessWidget {
  const EventCardMovie({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
        width: 300,
        height: 150,
        padding: const EdgeInsets.all(16),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(""),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}

class Myhome extends StatelessWidget {
  const Myhome({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: movies.length,
      itemBuilder: (context, index) {
        return Card(
          child: Text(movies[index].title),
        );
      },
    );
  }
}
