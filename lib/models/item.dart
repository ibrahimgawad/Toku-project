import 'package:flutter/foundation.dart';

class Item {
  final String? image;
  final String jpName;
  final String enName;
  final String sound;

  const Item(
      {required this.sound,
      @required this.image,
      required this.jpName,
      required this.enName});
}
