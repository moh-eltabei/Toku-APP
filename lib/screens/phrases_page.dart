// ignore_for_file: missing_required_param

import 'package:flutter/material.dart';
import 'package:toku_app/components/category_item.dart';
import 'package:toku_app/models/item.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});
  final List<Item> phrase = const [
    Item(
      jpLang: 'Kimasu ka',
      enLang: 'are you coming',
      sound: 'are_you_coming.wav',
    ),
    Item(
        jpLang: 'Kōdoku suru koto o ',
        enLang: 'dont forget to subscribe',
        sound: 'dont_forget_to_subscribe.wav'),
    Item(
        jpLang: 'Go kibun wa ikagadesu ka',
        enLang: 'how are you feeling',
        sound: 'how_are_you_feeling.wav'),
    Item(
      jpLang: 'haiiro',
      enLang: 'i love anime',
      sound: 'i_love_anime.wav',
    ),
    Item(
        jpLang: 'Watashi wa puroguramingu',
        enLang: 'i love programming',
        sound: 'i_love_programming.wav'),
    Item(
        jpLang: 'Puroguramingu wa kantandesu ',
        enLang: 'programming is easy',
        sound: 'programming_is_easy.wav'),
    Item(
        jpLang: 'Namae wa nandesu ka',
        enLang: 'what is your name',
        sound: 'what_is_your_name.wav'),
    Item(
        jpLang: 'Doko ni iku no',
        enLang: 'where are you going',
        sound: 'where_are_you_going.wav'),
    Item(
      jpLang: 'Hai watashi wa kite imasu',
      enLang: 'yes im coming',
      sound: 'yes_im_coming.wav',
    ),
    Item(
        jpLang: 'chairo',
        enLang: 'dont forget to subscribe',
        sound: 'dont_forget_to_subscribe.wav'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff063c4a),
      appBar: AppBar(
        backgroundColor: const Color(0xff063c4a),
        elevation: 0,
        centerTitle: true,
        title: const Text('Phrases'),
      ),
      body: ListView.builder(
        itemCount: phrase.length,
        itemBuilder: (context, index) {
          return PhrasesItem(
            phrase: phrase[index],
            audioPrefix: 'phrases',
          );
        },
      ),
    );
  }
}
