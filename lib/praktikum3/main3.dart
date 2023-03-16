import 'package:flutter/material.dart';
import 'package:hello_world/praktikum3/part1/main3part1.dart';
import 'package:hello_world/praktikum3/part2/main3part2.dart';

class Main3 extends StatefulWidget{
  const Main3({Key? key}) : super(key: key);

  @override
  State<Main3> createState() => _Main3();
}

class _Main3 extends State<Main3> {

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
                    builder: (context) => Main3part1()
                )
                );
              }, child: Text("Part 1")),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => Main3part2()
                )
                );
              }, child: Text("Part 2")),
            ],
          )
      ),
    );
  }
}