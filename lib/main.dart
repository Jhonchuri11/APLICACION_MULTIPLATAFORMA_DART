import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp02());
}

class MyApp02 extends StatelessWidget {
  const MyApp02({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Using named routes JWCA',
      initialRoute: '/',
      routes: {
        '/': (context) => const MyFirstScreen2(),
        '/second': (context) => const MySecondScreen(),
      },
    );
  }
}

class MyFirstScreen2 extends StatefulWidget {
  const MyFirstScreen2({super.key});

  @override
  State<MyFirstScreen2> createState() => _MyFirstScreen2State();
}

class _MyFirstScreen2State extends State<MyFirstScreen2> {
  final TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _textController,
              decoration: const InputDecoration(
                hintText: 'Escribir su opinión',
              ),
            ),
            ElevatedButton(
              child: const Text('Launch screen second'),
              onPressed: () {
                final String enteredText = _textController.text;
                Navigator.pushNamed(context, '/second', arguments: enteredText);
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }
}

class MySecondScreen extends StatelessWidget {
  const MySecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final String? textPassed =
        ModalRoute.of(context)!.settings.arguments as String?;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Texto pasado del primer screen:',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              textPassed ?? 'No se obtuve el texto',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Go back"),
            ),
          ],
        ),
      ),
    );
  }
}
