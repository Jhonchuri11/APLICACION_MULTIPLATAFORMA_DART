import 'package:flutter/material.dart';

void main() {
  runApp(MyCalculator());
}

class MyCalculator extends StatelessWidget {
  //const MyCalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, home: MyHomeCalculator());
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
        title: Text("Mi primera calculadora JWCA"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
              flex: 2,
              child: Container(
                color: Colors.black,
                child: Center(
                  child: Text(
                    '0',
                    style: TextStyle(fontSize: 36, color: Colors.white),
                  ),
                ),
              )),
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  botonConfig(['C', '+/-', '%', '÷']),
                  botonConfig(['7', '8', '9', '×']),
                  botonConfig(['4', '5', '6', '-']),
                  botonConfig(['1', '2', '3', '+']),
                  botonConfig(['0', '.', '=']),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Creando el widget boton
  Widget botonConfig(List<String> buttons) {
    return Expanded(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: buttons.map((text) => CustomButton(text)).toList(),
    ));
  }
}

class CustomButton extends StatelessWidget {
  //const CustomButton({super.key});
  final String text;

  CustomButton(this.text);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(6.0),
        height: double.infinity,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(new Radius.circular(16.0)),
          color: Colors.black87,
        ),
        child: Text(
          text,
          style: new TextStyle(color: Colors.white, fontSize: 26.0),
        ),
      ),
    );
  }
}
