import 'package:flutter/material.dart';

import '../components/item_list.dart';
import '../models/item.dart';

class FamliyMembersPage extends StatelessWidget {
  const FamliyMembersPage({Key? key}) : super(key: key);
  final List<Item> item = const [
    Item(
        image: "assets/images/family_members/family_father.png",
        jpName: "Chichioya",
        enName: "Father",
        sound: "father.wav"),
    Item(
        image: "assets/images/family_members/family_daughter.png",
        jpName: "Musume",
        enName: "Daughter",
        sound: "daughter.wav"),
    Item(
        image: "assets/images/family_members/family_grandfather.png",
        jpName: " Ojison",
        enName: "GrandFather",
        sound: "grand father.wav"),
    Item(
        image: "assets/images/family_members/family_mother.png",
        jpName: "Hahaoya",
        enName: "mother",
        sound: "mother.wav"),
    Item(
        image: "assets/images/family_members/family_grandmother.png",
        jpName: "Sobo",
        enName: "GrandMother",
        sound: "grand mother.wav"),
    Item(
        image: "assets/images/family_members/family_younger_brother.png",
        jpName: "Nisan",
        enName: "older brother",
        sound: "older bother.wav"),
    Item(
        image: "assets/images/family_members/family_older_sister.png",
        jpName: "Ane",
        enName: "older sister",
        sound: "older sister.wav"),
    Item(
        image: "assets/images/family_members/family_son.png",
        jpName: "Musuko",
        enName: "son",
        sound: "son.wav"),
    Item(
        image: "assets/images/family_members/family_younger_brother.png",
        jpName: "Ototo",
        enName: "younger brother`",
        sound: "younger brohter.wav"),
    Item(
        image: "assets/images/family_members/family_younger_sister.png",
        jpName: "Imoto`",
        enName: "younger sister",
        sound: "younger sister.wav"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Family Members",
        ),
        backgroundColor: Color(0xff46322B),
      ),
      body: ListView.builder(
          itemCount: item.length,
          itemBuilder: (context, index) {
            return ItemList(
              itemType: "assets/sounds/family_members/",
              item: item[index],
              color: Color(0xff558B37),
            );
          }),
    );
  }
}
