import 'package:flutter/material.dart';

import 'Widgets/CardWidget.dart';
import 'entities/Film.dart';

class GStoreGridView extends StatefulWidget {
  const GStoreGridView({super.key});

  @override
  State<GStoreGridView> createState() => _GStoreGridViewState();
}

class _GStoreGridViewState extends State<GStoreGridView> {
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
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          childAspectRatio: 1,
        ),
        itemCount: films.length,
        itemBuilder: (context, index) {
          return CardWidget(
            image: films[index].image,
            title: films[index].title,
          );
        },
      ),
    );
  }
}
