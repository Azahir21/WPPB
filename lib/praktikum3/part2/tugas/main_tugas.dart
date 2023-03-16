import 'package:flutter/material.dart';
import 'package:hello_world/praktikum3/part2/tugas/main_screen.dart';

class Tugas extends StatefulWidget {
  const Tugas({Key? key}) : super(key: key);

  @override
  State<Tugas> createState() => _Tugas();
}

class _Tugas extends State<Tugas> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contacts',
      theme: ThemeData(),
      home: const MainScreen(),
    );
  }
}
