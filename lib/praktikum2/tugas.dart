import 'package:flutter/material.dart';

class Tugas extends StatefulWidget {
  const Tugas({Key? key}) : super(key: key);

  @override
  State<Tugas> createState() => _Tugas();
}

class _Tugas extends State<Tugas> {
  int _counter = 0;
  String _text = "prima";
  int _bil = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;

      _text = "Prima : ";
      for (int i=1; i<=_counter; i++){
        _bil = 0;
        for (int j=1;j<=i;j++){
          if (i%j==0){
            _bil++;
          }
        }
        if (_bil==2){
          _text += '${i}, ';
        }
      }

    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Tugas"),
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
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
