import 'package:flutter/material.dart';

void main() {
  runApp(MyCalculator());
}

class MyCalculator extends StatelessWidget {
  //const MyCalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomeCalculator());
  }
}

class MyHomeCalculator extends StatefulWidget {
  //const MyHomeCalculator({super.key});

  @override
  State<MyHomeCalculator> createState() => _MyHomeCalculatorState();
}

class _MyHomeCalculatorState extends State<MyHomeCalculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My primera calculadora"),
        centerTitle: true,
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.end),
    );
  }
}
