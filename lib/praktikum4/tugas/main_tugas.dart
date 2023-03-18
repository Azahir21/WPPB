import 'package:flutter/material.dart';
import 'package:hello_world/praktikum4/tugas/main_screen.dart';
import 'package:hello_world/praktikum4/tugas/provider/done_tourism_provider.dart';
import 'package:provider/provider.dart';

class Tugas extends StatefulWidget {
  const Tugas({Key? key}) : super(key: key);

  @override
  State<Tugas> createState() => _TugasState();
}

class _TugasState extends State<Tugas> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) =>DoneTourismProvider(),
      child: MaterialApp(
        title: 'Contacts',
        theme: ThemeData(),
        home: MainScreen(),
      ),
    );
  }
}
