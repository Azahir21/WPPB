import 'package:flutter/material.dart';
import 'package:hello_world/praktikum4/percobaan1/main_screen.dart';

class Percobaan1 extends StatefulWidget {
  const Percobaan1({Key? key}) : super(key: key);

  @override
  State<Percobaan1> createState() => _PercobaanState();
}

class _PercobaanState extends State<Percobaan1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contacts',
      theme: ThemeData(),
      home: MainScreen(),
    );
  }
}
