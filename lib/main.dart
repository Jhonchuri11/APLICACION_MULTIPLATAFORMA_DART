import 'package:flutter/material.dart';

void main() {
  runApp(const MyRestaurantApp());
}

/*
class MyHomeApp extends StatelessWidget {
  //const MyHomeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("My App de listas JWCA"),
        ),
        body: ListView(
          children: const <Widget>[
            ListTile(
              leading: Icon(Icons.verified_user),
              title: Text("VERIFICATION USER"),
              subtitle: Text("Create account"),
            ),
            ListTile(
              leading: Icon(Icons.add),
              title: Text("ADD INFORMATION"),
              subtitle: Text("Updating data"),
            ),
            ListTile(
              leading: Icon(Icons.create),
              title: Text("INSERT CLIENT"),
              subtitle: Text("Creating perfil"),
            )
          ],
        ),
      ),
    );
  }
}
*/

class Food {
  final String nombre;
  final String precio;
  final Image imagen;

  Food(this.nombre, this.precio, this.imagen);
}

List<Food> foods = [
  Food(
      "Ceviche Pesca Oriental",
      "S/. 28.99",
      Image.network(
        "https://cdn.sanity.io/images/ph1nl998/production/b61c545b00aff08699180840ce4d4f80ba66b077-1200x720.jpg?fit=fill&auto=format",
        width: 100,
        fit: BoxFit.cover,
      )),
  Food(
      "Pizza",
      "S/. 14.99",
      Image.network(
        "https://cdn.sanity.io/images/ph1nl998/production/b61c545b00aff08699180840ce4d4f80ba66b077-1200x720.jpg?fit=fill&auto=format",
        width: 100,
        fit: BoxFit.cover,
      )),
  Food(
      "Ensalada César",
      "S/. 11.99",
      Image.network(
        "https://cdn.sanity.io/images/ph1nl998/production/b61c545b00aff08699180840ce4d4f80ba66b077-1200x720.jpg?fit=fill&auto=format",
        width: 100,
        fit: BoxFit.cover,
      )),
  Food(
      "Sopa del día",
      "S/. 10.99",
      Image.network(
        "https://cdn.sanity.io/images/ph1nl998/production/b61c545b00aff08699180840ce4d4f80ba66b077-1200x720.jpg?fit=fill&auto=format",
        width: 100,
        fit: BoxFit.cover,
      )),
  Food(
      "Tallarín Mexicano",
      "S/. 10.99",
      Image.network(
        "https://cdn.sanity.io/images/ph1nl998/production/b61c545b00aff08699180840ce4d4f80ba66b077-1200x720.jpg?fit=fill&auto=format",
        width: 100,
        fit: BoxFit.cover,
      )),
  Food(
      "Paquete Promo Rolls",
      "S/. 52.99",
      Image.network(
        "https://cdn.sanity.io/images/ph1nl998/production/b61c545b00aff08699180840ce4d4f80ba66b077-1200x720.jpg?fit=fill&auto=format",
        width: 100,
        fit: BoxFit.cover,
      )),
  Food(
      "Omakases",
      "S/. 39.99",
      Image.network(
        "https://cdn.sanity.io/images/ph1nl998/production/b61c545b00aff08699180840ce4d4f80ba66b077-1200x720.jpg?fit=fill&auto=format",
        width: 100,
        fit: BoxFit.cover,
      )),
  Food(
      "Omakase Royal",
      "S/. 20.99",
      Image.network(
        "https://cdn.sanity.io/images/ph1nl998/production/b61c545b00aff08699180840ce4d4f80ba66b077-1200x720.jpg?fit=fill&auto=format",
        width: 100,
        fit: BoxFit.cover,
      )),
  Food(
      "Sushi Bown Veggie",
      "S/. 30.99",
      Image.network(
        "https://cdn.sanity.io/images/ph1nl998/production/b61c545b00aff08699180840ce4d4f80ba66b077-1200x720.jpg?fit=fill&auto=format",
        width: 100,
        fit: BoxFit.cover,
      )),
  Food(
      "Sakana Salad",
      "S/. 32.99",
      Image.network(
        "https://cdn.sanity.io/images/ph1nl998/production/b61c545b00aff08699180840ce4d4f80ba66b077-1200x720.jpg?fit=fill&auto=format",
        width: 100,
        fit: BoxFit.cover,
      )),
];

class MyRestaurantApp extends StatelessWidget {
  const MyRestaurantApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'JWCA',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("MENÚ DE RESTAURANTE JWCA"),
        ),
        body: ListView.builder(
            itemCount: foods.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: foods[index].imagen,
                title: Text(foods[index].nombre),
                subtitle: Text(foods[index].precio),
              );
            }),
      ),
    );
  }
}
