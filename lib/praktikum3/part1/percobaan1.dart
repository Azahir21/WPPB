import 'package:flutter/material.dart';

class Percobaan1 extends StatefulWidget{
  const Percobaan1({Key? key}) : super(key: key);

  @override
  State<Percobaan1> createState() => _Percobaan1();
}

class _Percobaan1 extends State<Percobaan1>{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contacts',
      theme: ThemeData(),
      home: const DetailScreen(),
    );
  }
}
class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget> [
              Container(
                  margin: const EdgeInsets.only(top: 16.0),
                  child: const Text(
                    'Surabaya Submarine Monument',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  )
              ),
            ],
          ),
        )
    );
  }
}
