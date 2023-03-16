import 'package:flutter/material.dart';
import 'package:hello_world/praktikum3/part1/latihan.dart';
import 'package:hello_world/praktikum3/part1/percobaan1.dart';
import 'package:hello_world/praktikum3/part1/percobaan2.dart';
import 'package:hello_world/praktikum3/part1/percobaan3.dart';
import 'package:hello_world/praktikum3/part1/percobaan4.dart';
import 'package:hello_world/praktikum3/part1/percobaan5.dart';
import 'package:hello_world/praktikum3/part1/tugas.dart';

class Main3part1 extends StatefulWidget{
  const Main3part1({Key? key}) : super(key: key);

  @override
  State<Main3part1> createState() => _Main3part1();
}

class _Main3part1 extends State<Main3part1> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Praktikum 3 part 1"),
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
                    builder: (context) => Percobaan3()
                )
                );
              }, child: Text("Percobaan 3")),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => Percobaan4()
                )
                );
              }, child: Text("Percobaan 4")),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => Percobaan5()
                )
                );
              }, child: Text("Percobaan 5")),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => Latihan()
                )
                );
              }, child: Text("Latihan")),
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