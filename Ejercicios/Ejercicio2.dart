import 'dart:math';

void main() {
  // Creando un objeto de tipo CalculadoraAvanzada
  CalculadoraAvanzada calculadoraAvanzada = CalculadoraAvanzada();

  calculadoraAvanzada.suma(30, 80);
  calculadoraAvanzada.resta(100, 50);
  calculadoraAvanzada.multiplicacion(6, 7);
  calculadoraAvanzada.division(60, 12);
  calculadoraAvanzada.potencia(8);
  calculadoraAvanzada.raizCuadrada(49);
}

// Creando clase Calculadora
class Calculadora {
  // Creando metodos de operaciones matemáticas básicas
  // Metodo suma
  void suma(int a, int b) {
    var resul = a + b;
    print("> La suma de $a y $b es: $resul");
  }

  // Metodo resta
  void resta(int a, int b) {
    var result = a - b;
    print("> La resta de $a y $b es: $result");
  }

  // Metodo multiplicacion
  void multiplicacion(int a, int b) {
    var result = a * b;
    print("> La multiplicacion de $a y $b es: $result");
  }

  // Metodo division
  void division(int a, int b) {
    var result = a / b;
    print("> La division de $a y $b es : $result");
  }
}

// Creando dos mixin adiciones
mixin OperacionesAdicionales {
  void potencia(int a) {
    var result = (a * a);
    print("> Potencia de $a es : $result");
  }
}

mixin OperacionesAvanzadas {
  void raizCuadrada(int a) {
    var result = sqrt(a);
    print("> Raiz cuadrada de $a es : $result");
  }
}

// La clase CalculadoraAvanzada hereda de Calculadora y utiliza los dos mixin Operacoones Adicionales y Operaciones Avanzadas
class CalculadoraAvanzada extends Calculadora
    with OperacionesAdicionales, OperacionesAvanzadas {}
