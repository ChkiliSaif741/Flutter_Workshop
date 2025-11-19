import 'package:flutter/material.dart';
import 'package:untitled1/Widgets/MovieItem.dart';

import 'entities/Film.dart';

class GStoreList extends StatefulWidget {
  const GStoreList({super.key});

  @override
  State<GStoreList> createState() => _GStoreListState();
}

class _GStoreListState extends State<GStoreList> {
  final List<Film> films = [
    Film(
      title: "House Of Dead",
      description: "A thrilling horror film.",
      price: 15,
      image: "HouseOfDead.jpg",
    ),
    Film(
      title: "Ice Road",
      description: "An action-packed adventure.",
      price: 20,
      image: "iceroad.jpg",
    ),
    Film(
      title: "The Abyss",
      description: "A deep-sea exploration movie.",
      price: 18,
      image: "theabyss.jpg",
    ),
    Film(
      title: "The Grudge",
      description: "A spine-chilling horror story.",
      price: 12,
      image: "thegrudge.jpg",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("G-STORE", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black,
      ),
      body: ListView.builder(
        itemCount: films.length,
        itemBuilder: (context, index) {
          return Movieitem(
            image: films[index].image,
            title: films[index].title,
          );
        },
      ),
    );
  }
}
