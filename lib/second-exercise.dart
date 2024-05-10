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

class MyFirstScreen2 extends StatelessWidget {
  const MyFirstScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First screen'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Launch screen second'),
          onPressed: () {
            Navigator.pushNamed(context, '/second');
          },
        ),
      ),
    );
  }
}

class MySecondScreen extends StatelessWidget {
  const MySecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Screen"),
      ),
      body: Center(
        child: ElevatedButton(
            child: const Text("God back"),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
    );
  }
}
