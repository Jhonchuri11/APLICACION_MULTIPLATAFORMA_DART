void main() {
  // Creando un objeto de tipo UsuarioAutentificado
  UsuarioAutenticado usuarioAutenticado =
      UsuarioAutenticado("Jhon", "1234", "Jhon@gmail.com");

  // Invocamos el metodo iniciarsesion
  usuarioAutenticado.iniciarSesion();
  // Mostrando un poco de dinamica login
  print("Bienvenido ${usuarioAutenticado.nombre}");
}

// Creando una clase Usuario
class Usuario {
  // Atributo nombre inicializando vacio
  String nombre = "";
  // Atributo email
  String email = "";
  // Atributo contraseña
  String contrasena = "";

  Usuario(this.nombre, this.email, this.contrasena);
}

// Definiendo un mixin que simula el inicio de sesion
mixin Autenticacion {
  // Metodo de inicio de sesion
  void iniciarSesion() {
    print("Usuario iniciando sesión con exito!");
  }
}

// Clase UsuarioAutenticado esta heredando de Usuario y utiliza el mixin Autenticacion
class UsuarioAutenticado extends Usuario with Autenticacion {
  UsuarioAutenticado(String nombre, String email, String contrasena)
      : super(nombre, email, contrasena);
}
