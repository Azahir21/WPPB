import 'package:flutter/material.dart';
import 'package:hello_world/percobaan1.dart';
import 'package:hello_world/percobaan2.dart';
import 'latihan.dart';
import 'tugas.dart';

void main() {
  runApp(
      MaterialApp(
          title: "App",
          home: MyApp()
      )
  );
}

class MyApp extends StatelessWidget {

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