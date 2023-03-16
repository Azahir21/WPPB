import 'package:flutter/material.dart';
import 'package:hello_world/praktikum3/part2/percobaan/main_percobaan.dart';
import 'package:hello_world/praktikum3/part2/tugas/main_tugas.dart';

class Main3part2 extends StatefulWidget{
  const Main3part2({Key? key}) : super(key: key);

  @override
  State<Main3part2> createState() => _Main3part2();
}

class _Main3part2 extends State<Main3part2> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Praktikum 3 part 2"),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => Percobaan()
                )
                );
              }, child: Text("Percobaan")),
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