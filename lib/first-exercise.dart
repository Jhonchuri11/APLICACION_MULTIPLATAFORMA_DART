import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: "Navigation basic",
    home: MyApp01(),
  ));
}

class MyApp01 extends StatelessWidget {
  const MyApp01({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mi página 1"),
      ),
      body: Center(
          child: ElevatedButton(
        child: const Text("Open page 2"),
        onPressed: () {
          // Aqui se usa el navigator para crear la navegacion, primero con el push
          // El cual este nos permitira navegar entre otra pagina
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const MyPage2()),
          );
        },
      )),
    );
  }
}

class MyPage2 extends StatelessWidget {
  const MyPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Mi segunda pagina"),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Go Back page 1!"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
