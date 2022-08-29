import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/item_list.dart';
import 'package:flutter_application_1/models/item.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({Key? key}) : super(key: key);
  final List<Item> item = const [
    Item(
      jpName: "Kimasu ka",
      enName: "are you coming",
      sound: "are_you_coming.wav",
    ),
    Item(
      jpName: "Kōdoku suru koto o wasurenaide kudasai",
      enName: "dont forget to subscribe",
      sound: "dont_forget_to_subscribe.wav",
    ),
    Item(
        jpName: " Go kibun wa ikagadesu ka",
        enName: "how are you feeling",
        sound: "how_are_you_feeling.wav"),
    Item(
      jpName: "Watashi wa anime ga daisukidesu`",
      enName: "i love anime",
      sound: "i_love_anime.wav",
    ),
    Item(
      jpName: "Watashi wa puroguramingu ga daisukidesu",
      enName: "i love programming",
      sound: "i_love_programming.wav",
    ),
    Item(
      jpName: "Puroguramingu wa kantandesu",
      enName: "programming is easy",
      sound: "programming_is_easy.wav",
    ),
    Item(
      jpName: "Namae wa nandesu ka",
      enName: "what is your name",
      sound: "what_is_your_name.wav",
    ),
     Item(
      jpName: "Doko ni iku no",
      enName: "where are you going",
      sound: "where_are_you_going.wav",
    ),
     Item(
      jpName: "Hai, ikimasu",
      enName: "yes i'm coming",
      sound: "yes_im_coming.wav",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Phrases",
        ),
        backgroundColor: Color(0xff46322B),
      ),
      body: ListView.builder(
          itemCount: item.length,
          itemBuilder: (context, index) {
            return PhrasesList(
              itemType: "assets/sounds/phrases/",
              item: item[index],
              color: Color(0xff50ADC7),
            );
          }),
    );
  }
}
