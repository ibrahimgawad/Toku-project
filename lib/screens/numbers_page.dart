import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/item_list.dart';
import 'package:flutter_application_1/models/item.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({Key? key}) : super(key: key);
  final List<Item> item = const [
    Item(
        image: "assets/images/numbers/number_one.png",
        jpName: "ichi",
        enName: "one",
        sound: "number_one_sound.mp3"),
    Item(
        image: "assets/images/numbers/number_two.png",
        jpName: "San",
        enName: "two",
        sound: "number_two_sound.mp3"),
    Item(
        image: "assets/images/numbers/number_three.png",
        jpName: " Ni",
        enName: "three",
        sound: "number_three_sound.mp3"),
    Item(
        image: "assets/images/numbers/number_four.png",
        jpName: "shi",
        enName: "four",
        sound: "number_four_sound.mp3"),
    Item(
        image: "assets/images/numbers/number_five.png",
        jpName: "Go",
        enName: "five",
        sound: "number_five_sound.mp3"),
    Item(
        image: "assets/images/numbers/number_six.png",
        jpName: "Roku",
        enName: "six",
        sound: "number_six_sound.mp3"),
    Item(
        image: "assets/images/numbers/number_seven.png",
        jpName: "sebun",
        enName: "seven",
        sound: "number_seven_sound.mp3"),
    Item(
        image: "assets/images/numbers/number_eight.png",
        jpName: "hachi",
        enName: "eight",
        sound: "number_eight_sound.mp3"),
    Item(
        image: "assets/images/numbers/number_nine.png",
        jpName: "Kyu",
        enName: "nine`",
        sound: "number_nine_sound.mp3"),
    Item(
        image: "assets/images/numbers/number_ten.png",
        jpName: "Ju`",
        enName: "ten",
        sound: "number_ten_sound.mp3"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Numbers"),
        backgroundColor: Color(0xff46322B),
      ),
      body: ListView.builder(
          itemCount: item.length,
          itemBuilder: (context, index) {
            return ItemList(
              itemType: "assets/sounds/numbers/",
              item: item[index],
              color: Color(0xffEF9235),
            );
          }),
    );
  }

  List<Widget> getList(List<Item> numbers) {
    List<ItemList> nuList = [];
    for (int i = 0; i < numbers.length; i++) {
      nuList.add(ItemList(
        itemType: "assets/sounds/numbers/",
        item: numbers[i],
        color: Color(0xffEF9235),
      ));
    }
    return nuList;
  }
}
