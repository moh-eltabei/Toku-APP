import 'package:flutter/material.dart';
import 'package:toku_app/components/category_item.dart';
import 'package:toku_app/models/item.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});
  final List<Item> colorsItem = const [
    Item(
        jpLang: 'kuro',
        enLang: 'Black',
        img: 'assets/images/colors/color_black.png',
        sound: 'black.wav'),
    Item(
        jpLang: 'chairo',
        enLang: 'Brown',
        img: 'assets/images/colors/color_brown.png',
        sound: 'brown.wav'),
    Item(
        jpLang: 'kuchiba',
        enLang: 'Dusty Yellow',
        img: 'assets/images/colors/color_dusty_yellow.png',
        sound: 'dusty_yellow.wav'),
    Item(
        jpLang: 'haiiro',
        enLang: 'Gray',
        img: 'assets/images/colors/color_gray.png',
        sound: 'gray.wav'),
    Item(
        jpLang: 'midori',
        enLang: 'Green',
        img: 'assets/images/colors/color_green.png',
        sound: 'green.wav'),
    Item(
        jpLang: 'aka',
        enLang: 'Red',
        img: 'assets/images/colors/color_red.png',
        sound: 'red.wav'),
    Item(
        jpLang: 'shiro',
        enLang: 'White',
        img: 'assets/images/colors/color_white.png',
        sound: 'white.wav'),
    Item(
        jpLang: 'kiiro',
        enLang: 'Yellow',
        img: 'assets/images/colors/color_yellow.png',
        sound: 'yellow.wav'),
    Item(
        jpLang: 'kuro',
        enLang: 'Black',
        img: 'assets/images/colors/color_black.png',
        sound: 'black.wav'),
    Item(
        jpLang: 'chairo',
        enLang: 'Brown',
        img: 'assets/images/colors/color_brown.png',
        sound: 'brown.wav'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff063c4a),
      appBar: AppBar(
        backgroundColor: const Color(0xff063c4a),
        elevation: 0,
        centerTitle: true,
        title: const Text('Colors'),
      ),
      body: ListView.builder(
        itemCount: colorsItem.length,
        itemBuilder: (context, index) {
          return CategoryItems(
            item: colorsItem[index],
            audioPrefix: 'colors',
          );
        },
      ),
    );
  }
}
