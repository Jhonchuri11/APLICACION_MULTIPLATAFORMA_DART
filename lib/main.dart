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
  Movie(
      "Falcon y el soldado de Invierno",
      "2021",
      "Acción",
      Image.network(
          "https://hips.hearstapps.com/hmg-prod/images/falcon-soldado-invierno-fotogramas-1615229600.jpg?crop=1.00xw:0.452xh;0,0.0204xh&resize=980:*"),
      "2:30"),
  Movie(
      "Deadpool 3",
      "2024",
      "Acción",
      Image.network(
          "https://hips.hearstapps.com/hmg-prod/images/deadpool-disparando-1549457850.jpg?resize=980:*"),
      "2:20"),
  Movie(
      "Agatha: Dakhold Diaries",
      "2024",
      "Series",
      Image.network(
          "https://hips.hearstapps.com/hmg-prod/images/agatha-fotogramas-1636744094.jpeg?resize=980:*"),
      "1:55"),
  Movie(
      "Daredevil: Born Again",
      "2024",
      "Serie",
      Image.network(
          "https://hips.hearstapps.com/hmg-prod/images/daredevil-fotogramas-1631051837.jpg?resize=980:*"),
      "2:10"),
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
        body: const Myhome(),
      ),
    );
  }
}

class EventCardMovie extends StatelessWidget {
  final Movie movie;

  const EventCardMovie({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
          width: 300,
          height: 150,
          padding: const EdgeInsets.all(16),
          child: Row(
            children: <Widget>[
              movie.imagen,
              const SizedBox(
                width: 16,
              ),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    movie.title,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  const SizedBox(height: 10),
                  Text(movie.fecha),
                  Text(movie.genero),
                  Text(movie.duracion)
                ],
              ))
            ],
          )),
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
        return EventCardMovie(movie: movies[index]);
      },
    );
  }
}
