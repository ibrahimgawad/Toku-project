import 'package:flutter/material.dart';

import '../components/item_list.dart';
import '../models/item.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({Key? key}) : super(key: key);
  final List<Item> item = const [
    Item(
        image: "assets/images/colors/color_black.png",
        jpName: "Burakku",
        enName: "black",
        sound: "black.wav"),
    Item(
        image: "assets/images/colors/color_brown.png",
        jpName: "Chairo",
        enName: "brown",
        sound: "brown.wav"),
    Item(
        image: "assets/images/colors/color_dusty_yellow.png",
        jpName: " Hokori ppoi kiiro",
        enName: "dusty yellow",
        sound: "dusty yellow.wav"),
    Item(
        image: "assets/images/colors/color_gray.png",
        jpName: "Gure`",
        enName: "gray",
        sound: "gray.wav"),
    Item(
        image: "assets/images/colors/color_green.png",
        jpName: "Midori",
        enName: "green",
        sound: "green.wav"),
    Item(
        image: "assets/images/colors/color_red.png",
        jpName: "Aka",
        enName: "red",
        sound: "red.wav"),
    Item(
        image: "assets/images/colors/color_white.png",
        jpName: "Burakku",
        enName: "white",
        sound: "white.wav"),
    Item(
        image: "assets/images/colors/color_yellow.png",
        jpName: "Shiroi",
        enName: "yellow",
        sound: "yellow.wav"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Colors",
        ),
        backgroundColor: Color(0xff46322B),
      ),
      body: ListView.builder(
          itemCount: item.length,
          itemBuilder: (context, index) {
            return ItemList(
              itemType: "assets/sounds/colors/",
              item: item[index],
              color: Color(0xff79359F),
            );
          }),
    );
  }
}
