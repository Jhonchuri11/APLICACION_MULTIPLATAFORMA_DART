void main() {
  
  final personaje = new MarvelHeroes(NombrePila: "Spiderman", NombrePeronaje: "Peter Parlker");
  print(personaje.NombrePila);
  print(personaje.NombrePeronaje);

  final personaje2 = new DCHeroes(NombrePila: "BATMAN", NombrePersonaje: "BRUCE WAYNE");
  print(personaje2.NombrePila);
  print(personaje2.NombrePersonaje);

}

class MarvelHeroes {

  String NombrePila;
  String NombrePeronaje;

  final MHjson = {
    'NombrePila': 'Capitan A',
    'NombrePersonaje': 'Richard R'
  };
  

  MarvelHeroes({required this.NombrePila, required this.NombrePeronaje });

}

class DCHeroes {

  String NombrePila;
  String NombrePersonaje;

  final DCjson = {
    'NombrePila': 'Batman',
    'NombrePersonaje': 'Bruce Wayne'
  };

  DCHeroes({required this.NombrePila, required this.NombrePersonaje});

  DCHeroes.DCjson(Map <String, String> json):
  this.NombrePila = json['NombrePila'] ?? 'No tiene alias',
  this.NombrePersonaje = json['NombrePeronaje'] ?? 'No tiene nombre';

  @override
  String toString() {
    return 'NombrePila: ${this.NombrePila}, NombrePersonaje: ${this.NombrePersonaje}';
  }

}