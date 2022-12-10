import 'package:flutter/material.dart';
import 'package:toku_app/components/category_item.dart';
import 'package:toku_app/models/item.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});
  final List<Item> numnersItem = const [
    Item(
        jpLang: 'ichi',
        enLang: 'one',
        img: 'assets/images/numbers/domino_one.png',
        sound: 'number_one_sound.mp3'),
    Item(
        jpLang: 'Ni',
        enLang: 'two',
        img: 'assets/images/numbers/domino_two.png',
        sound: 'number_two_sound.mp3'),
    Item(
        jpLang: 'San',
        enLang: 'three',
        img: 'assets/images/numbers/domino_three.png',
        sound: 'number_three_sound.mp3'),
    Item(
        jpLang: 'Shi',
        enLang: 'four',
        img: 'assets/images/numbers/domino_four.png',
        sound: 'number_four_sound.mp3'),
    Item(
        jpLang: 'Go',
        enLang: 'five',
        img: 'assets/images/numbers/domino_five.png',
        sound: 'number_five_sound.mp3'),
    Item(
        jpLang: 'Roku',
        enLang: 'six',
        img: 'assets/images/numbers/domino_six.png',
        sound: 'number_six_sound.mp3'),
    Item(
        jpLang: 'Sebun',
        enLang: 'seven',
        img: 'assets/images/numbers/domino_seven.png',
        sound: 'number_seven_sound.mp3'),
    Item(
        jpLang: 'havhi',
        enLang: 'eight',
        img: 'assets/images/numbers/domino_eight.png',
        sound: 'number_eight_sound.mp3'),
    Item(
        jpLang: 'Kyu',
        enLang: 'nine',
        img: 'assets/images/numbers/domino_nine.png',
        sound: 'number_nine_sound.mp3'),
    Item(
        jpLang: 'Ju',
        enLang: 'ten',
        img: 'assets/images/numbers/domino_ten.png',
        sound: 'number_ten_sound.mp3'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff063c4a),
      appBar: AppBar(
        backgroundColor: const Color(0xff063c4a),
        elevation: 0,
        centerTitle: true,
        title: const Text('Numbers'),
      ),
      body: ListView.builder(
        itemCount: numnersItem.length,
        itemBuilder: (context, index) {
          return CategoryItems(
              item: numnersItem[index], audioPrefix: 'numbers');
        },
      ),
    );
  }
}
