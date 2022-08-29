import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/item.dart';

class ItemList extends StatelessWidget {
  const ItemList(
      {required this.item, required this.color, required this.itemType});
  final Item item;
  final Color color;
  final String itemType;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 100,
      child: Row(
        children: [
          Container(color: Color(0XffFFFCD6), child: Image.asset(item.image!)),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  item.jpName,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  item.enName,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          IconButton(
            onPressed: () {
              try {
                AudioCache player = AudioCache(prefix: itemType);
                player.play(item.sound);
              } catch (e) {
                print(e);
              }
            },
            icon: Icon(
              Icons.play_arrow,
              size: 30,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

class PhrasesList extends StatelessWidget {
  const PhrasesList(
      {required this.item, required this.color, required this.itemType});
  final Item item;
  final Color color;
  final String itemType;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 100,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  item.jpName,
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                Text(
                  item.enName,
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          IconButton(
            onPressed: () {
              try {
                AudioCache player = AudioCache(prefix: itemType);
                player.play(item.sound);
              } catch (e) {
                print(e);
              }
            },
            icon: Icon(
              Icons.play_arrow,
              size: 30,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
