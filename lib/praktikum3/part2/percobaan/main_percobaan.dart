import 'package:flutter/material.dart';
import 'package:hello_world/praktikum3/part2/percobaan/main_screen.dart';

class Percobaan extends StatefulWidget {
  const Percobaan({Key? key}) : super(key: key);

  @override
  State<Percobaan> createState() => _Percobaan();
}

class _Percobaan extends State<Percobaan> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contacts',
      theme: ThemeData(),
      home: const MainScreen(),
    );
  }
}
