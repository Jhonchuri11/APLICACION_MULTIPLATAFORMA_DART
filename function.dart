void main() {
  List<String> colores = ['rojo', 'verde', 'azul'];

  List<int> numeros = [1, 2, 3, 4, 5];

  // Vamos añadir el numero 6 y  color 'amarillo' en la lista colores y     numeros
  print('--> Lista actual de colores');
  print(colores);
  colores.add('amarillo');
  print('Lista actual de numeros');
  print(numeros);
  numeros.add(6);
  print('');

  print('--> Lista despues de la insercción de colores');
  print(colores);
  print('--> Lista despues de la inserccion de numeros');
  print(numeros);

  // Ejemplo de asignacion de valor a un elemento
  // numeros[6] = 8;
  // print(numeros);
  // En esta parte sale error por que solo se puede asignar un valor a un elemeto existente
  print('');
  print('--> Asignando nuevo valor al indice 5 = 7 ');
  numeros[5] = 7;
  print(numeros);

  // Ejemplo de utilizar la funcion removeAt para eliminar un elemento de una lista con un indice especificado
  print('');
  print('-> Elimiando un elemento de la lista colores reomveAt | Indice 0');
  colores.removeAt(1);
  print(colores);

  // Funcion remove elimina un elemento de la lista, pero ese elemento tiene que estar descrito y especificado en la lista
  // En este ejemplo se elimina en la lista colores: colores:amarillo
  print('');
  print('-> Elimando el color amarillo remove');
  colores.remove('amarillo');
  print(colores);

  // Vamos a iterar sobre la lista numeros y mostrar cada elemento
  print('');
  print('-> Iterando sobrfe la lista de numeros');
  for (var i = 0; i < numeros.length; i++) {
    var cantidad = numeros[i];
    print(cantidad);
  }

  // Vamos a iterar sobre la lista de colores y mostrar cada elemento
  print('');
  print('-> Iterando sobre la lista de colores');
  for (var i = 0; i < colores.length; i++) {
    print('VALORES -> ' + colores[i]);
  }

  // Declarando un mapa llamado persona

  Map persona = {'nombre': 'Juan', 'edad': 30, 'ciudad': 'Madrid'};

  print('');
  print('--> Mostrando un mapa Persona');
  print(persona);

  // Accediendo a la clave nombre del mapa persona
  print('-> NOMBRE: ' + persona['nombre']);

  // Accediendo al valor de clave edad para que 30 = 35
  // Estamos agregando un nuevo valor al clave valor edad
  print('');
  print('--> AGREGANDO UN NUEVO VALOR EN CLAVE VALOR EDAD:');
  persona.addAll({'edad': 35});
  print(persona);

  // Agregamos una nueva clave profesion: ingeniero
  // Lo que podemos ver es que con la funcion addAll podemos actualizar el valor ya establecido anteriormente de una clave o crear una nueva clave
  print('');
  print('--> AGREGANDO NUEVA CLAVE');
  persona.addAll({'profesion': 'Ingeniero'});
  print(persona);

  // Iterando sobre el mapa persona y mostrando cada clave y su valor

  for (var i in persona.entries) {
    var clav = i.key;
    var val = i.value;

    print('');
    print('--> Imprimiendo iteracion persona');
    print(clav);
    print(val);
  }

  // Declarando un mapa por el tipo de dato | Primer int
  Map<int, dynamic> jugadores = {1: 'Lucas', 2: 'Dani', 3: 'Sara'};

  print('');
  print('-> Mapa de tipo entero');
  print(jugadores);

  // Declarando un mapa por el tipo de dato | Segundo string
  Map<String, dynamic> woman = {
    'beautiful': 'Sarai',
    'lider': 'Danitza',
    'unique': 'Rebeca'
  };
  print('');
  print('-> Mapa de tipo string');
  print(woman);
}
