import 'package:flutter/foundation.dart';

class Item {
  final String? img;
  final String jpLang;
  final String enLang;
  final String sound;

  const Item({
    @required this.img,
    required this.jpLang,
    required this.enLang,
    required this.sound,
  });
}
