void main() {
  /* PARTE 1 */

  // Creando una prima instancia de la clase MarvelHeroes
  final hombreSP = new MarvelHeroes(
      NombrePila: 'PETER PARKER', NombrePersonaje: 'SPIDERMAN');
  print(hombreSP);

  // Creando la seguna instancia de la clase DCHeroes

  final hombreBA =
      DCHeroes(NombrePila: 'BRUCE WAYNE', NombrePersonaje: 'BATMAN');
  print(hombreBA);

  // ---------------------------------------------------------------->

  /* PARTE 3 | ULTIMA */

  // Creando dos objetos del constructor de la clase MarvelHeroes
  var iroMan =
      MarvelHeroes(NombrePila: 'Tony Stark', NombrePersonaje: 'Iron Man');
  print(iroMan);
  var hulk = MarvelHeroes(NombrePila: 'Bruce Banner', NombrePersonaje: 'Hulk');
  print(hulk);

  // Creando dos objetos del constructor de la clase DCHeroes

  var flash = DCHeroes(NombrePila: 'Barry Allen', NombrePersonaje: 'Flash');
  print(flash);

  var superman = DCHeroes.fromDCJson(
      {'NombrePila': 'Clark Kent', 'NombrePersonaje': 'Superman'});
  print(superman);

  // ---------------------------------------------------------------->
}

// Ejercicio 1
// Se crea una clase MarvelHeroes con atributos
// - NombrePila - NombrePersonaje
// utilizar un constructor abreviado utilizando required
// Mostrar en consola: "Hola mi nombre es: PETER PARKER" pero me conocen como
// tu amigable vecino SPIDERMAN

class MarvelHeroes {
  // Creando dos atributos para esta clase

  String NombrePila;
  String NombrePersonaje;

  // Utilizando un constructor abreviado con required
  MarvelHeroes({required this.NombrePila, required this.NombrePersonaje});

  // Un ejemplo de constructor sin requiered
  //MarvelHeroes(this.NombrePila, this.NombrePersonaje);

  // Sobrescribiendo el método para devolver en tipo de cadena o string
  @override
  String toString() {
    return 'Hola mi nombre es: $NombrePersonaje pero me conocen como tu amigable vecino $NombrePila';
  }
}

// Ejercicio 2
// Se crea una clase DCHeroes con atributos
// - NombrePila - NombrePersonaje
// Se utilizará un mapa de datos llamado DCJson
// Utilizará un constructor con nombre de fromDCJson
// Debe estar protegido y en caso algún dato no exista remitir un mensaje automática en consola
// de: "No tiene nombre" y "No tiene alias"
// Mensaje en consola: "Hola mi nombre es: BRUCE WAYNE pero me conocen como el caballero de la noche BATMAN"

class DCHeroes {
  // Creando dos atributos
  String NombrePila;
  String NombrePersonaje;

  // Cracion de un mapa DCJson
  final DCJson = {'NombrePila': 'BRUCE WAYNE', 'NombrePersonaje': 'BATMAN'};

  // Creación de un constructor
  DCHeroes({required this.NombrePila, required this.NombrePersonaje});

  // Para verificar y que este protegido en el ingreso de data
  DCHeroes.fromDCJson(Map<String, String> json)
      : this.NombrePila = json['NombrePila'] ?? 'No tiene nombre',
        this.NombrePersonaje = json['NombrePersonaje'] ?? 'No tiene alias';

  // Para mostrar el tipo de string y cadena
  @override
  String toString() {
    return "Hola mi nombre es: $NombrePila pero me conocen como el caballero de la noche $NombrePersonaje";
  }
}

// Ejercicio 3
// En los ejemplos anterios agregar un constructor con parámetros en cada uno de las clasesy crear
// diferentes objetos con diferentes constructores
