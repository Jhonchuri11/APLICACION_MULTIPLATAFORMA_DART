void main() {
  // Creando una lista de objetos para calcular la bonificacion de cada empleado basado en su salario
  EmpleadoConBonificaciones emplead1 =
      EmpleadoConBonificaciones("Eduarado", "Torres", 1600, 8);
  var bonificacion = emplead1.bonificacionEmpleado(emplead1.salario);
  print(
      "El empleado(a) ${emplead1.nombre} tiene una bonicación de: ${bonificacion}");

  EmpleadoConBonificaciones empleado2 =
      EmpleadoConBonificaciones("Carla", "Cavero", 1800, 8);
  empleado2.bonificacionEmpleado(empleado2.salario);
  var bonificacion2 = emplead1.bonificacionEmpleado(empleado2.salario);
  print(
      "El empleado(a) ${empleado2.nombre} tiene una bonicación de: ${bonificacion2}");
}

// Creando clase Empleado
class Empleado {
  // Atributo nombre
  String nombre = "";
  // Atributo apellido
  String apellido = "";
  // Atributo salario
  double salario = 0.0;
  // Atributo horas trabajadas
  int horasTrabajadas = 0;

  // Constructor
  Empleado(this.nombre, this.apellido, this.salario, this.horasTrabajadas);
}

// Definiendo un mixin Bonificaciones

mixin Bonificaciones {
  // Metodo que calcula la bonificación basada en el salario del empleado
  double bonificacionEmpleado(double salario) {
    return salario * 0.2; // 20% de bonificación
  }
}

class EmpleadoConBonificaciones extends Empleado with Bonificaciones {
  EmpleadoConBonificaciones(
      String nombre, String apellido, double salario, int horasTrabajadas)
      : super(nombre, apellido, salario, horasTrabajadas);
}
