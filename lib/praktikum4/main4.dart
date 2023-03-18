import 'package:flutter/material.dart';
import 'package:hello_world/praktikum4/percobaan1/main_percobaan.dart';
import 'package:hello_world/praktikum4/percobaan2/main_percobaan.dart';
import 'package:hello_world/praktikum4/tugas/main_tugas.dart';

class Main4 extends StatefulWidget{
  const Main4({Key? key}) : super(key: key);

  @override
  State<Main4> createState() => _Main4();
}

class _Main4 extends State<Main4> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Praktikum 3"),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => Percobaan1()
                )
                );
              }, child: Text("Percobaan 1")),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => Percobaan2()
                )
                );
              }, child: Text("Percobaan 2")),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => Tugas()
                )
                );
              }, child: Text("Tugas")),
            ],
          )
      ),
    );
  }
}