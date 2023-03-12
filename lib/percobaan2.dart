import 'package:flutter/material.dart';

class Percobaan2 extends StatefulWidget {
  const Percobaan2({Key? key}) : super(key: key);

  @override
  State<Percobaan2> createState() => _Percobaan2();
}

class _Percobaan2 extends State<Percobaan2> {
  int _counter = 1;
  String _text = "Ganjil";

  void _incrementCounter() {
    setState(() {
      _counter++;
      if(_counter>10) {
        _counter = 1;
      }

      if(_counter%2 == 0) {
        _text = "Genap";
      } else {
        _text = "Ganjil";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Percobaan 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              _text,
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