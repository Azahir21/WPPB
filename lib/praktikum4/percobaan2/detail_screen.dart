import 'package:flutter/material.dart';
import 'package:hello_world/praktikum4/model/tourism_place.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.place}) : super(key: key);

  final TourismPlace place;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Image.asset(place.imageAsset),
                  Container(
                      margin: const EdgeInsets.only(top: 16.0),
                      child:  Text(
                        place.name,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 30.0,
                            fontFamily: 'Lobster'
                        ),
                      )
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            const Icon(Icons.calendar_today),
                            Text(place.openDay),
                          ],
                        ),
                        Column(
                          children:  <Widget>[
                            const Icon(Icons.access_time),
                            Text(place.openTime),
                          ],
                        ),
                        Column(
                          children:  <Widget>[
                            const Icon(Icons.attach_money),
                            Text(place.price),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      place.desc,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 16.0,
                        fontFamily: 'Oxygen',
                      ),
                    ),
                  ),
                  Container(
                    height: 150,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: place.imageList.map((image){
                        return Container(
                          child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.asset(image),
                              )
                          ),
                        );
                      }).toList()
                    ),
                  ),
                ],
              ),
            )
        )
    );
  }
}

