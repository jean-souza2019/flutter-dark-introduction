import 'package:flutter/material.dart';
import 'package:aula2/main.dart';

class MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String _textCounter = 'Zero';

  void _incrementCounter() {
    setState(() {
      _counter++;
      _textCounter;
    });

    if (_counter == 1) {
      _textCounter = 'Um';
    } else if (_counter == 2) {
      _textCounter = 'Dois';
    } else if (_counter == 3) {
      _textCounter = 'Tres';
    } else if (_counter == 4) {
      _textCounter = 'Quatro';
    } else if (_counter == 5) {
      _textCounter = 'Cinco';
    } else if (_counter == 6) {
      _textCounter = 'Seis';
    } else if (_counter == 7) {
      _textCounter = 'Sete';
    } else if (_counter == 8) {
      _textCounter = 'Oito';
    } else if (_counter == 9) {
      _textCounter = 'Nove';
    } else if (_counter == 10) {
      _textCounter = 'Dez';
    } else if (_counter > 10 && _counter <= 20) {
      _textCounter = 'Maior que 10';
    } else if (_counter > 20 && _counter <= 30) {
      _textCounter = 'Maior que 20';
    } else if (_counter > 30) {
      _textCounter = 'Maior que 30';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$_textCounter',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
