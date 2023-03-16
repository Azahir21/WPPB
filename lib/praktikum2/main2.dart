import 'package:flutter/material.dart';
import 'package:hello_world/praktikum2/percobaan1.dart';
import 'package:hello_world/praktikum2/percobaan2.dart';
import 'latihan.dart';
import 'tugas.dart';

class Main2 extends StatefulWidget{
  const Main2({Key? key}) : super(key: key);

  @override
  State<Main2> createState() => _Main2();
}

class _Main2 extends State<Main2> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Praktikum 2"),
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
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => Latihan( )
                    ),
                    );
                  },
                  child: Text("Latihan")
              ),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => Tugas()
                )
                );
              }, child: Text("Tugas"))
            ],
          )
      ),
    );
  }
}