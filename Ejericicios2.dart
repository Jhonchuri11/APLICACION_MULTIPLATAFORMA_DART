void main() {
  print("Hola Jhon");

  // Creando una lista

  List<String> nombres = ["Juan", "Pedro"];

  // Agregando nuevo valor a la lista de nombres

  nombres.add("Luis");
  print("Despues de agregar Luis");
  print(nombres);
  print("");

  // Elimando una valor de la lista
  nombres.remove("Juan");
  print("Despues de eliminar el valor Juan");
  print(nombres);
}
