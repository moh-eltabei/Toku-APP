import 'package:flutter/material.dart';
import 'package:toku_app/components/category_item.dart';
import 'package:toku_app/models/item.dart';

class FamilyPage extends StatelessWidget {
  const FamilyPage({super.key});
  final List<Item> family = const [
    Item(
        jpLang: 'chichi',
        enLang: 'father',
        img: 'assets/images/family_members/family_father.png',
        sound: 'father.wav'),
    Item(
        jpLang: 'haha',
        enLang: 'mother',
        img: 'assets/images/family_members/family_mother.png',
        sound: 'mother.wav'),
    Item(
        jpLang: 'sofu',
        enLang: 'grandfather',
        img: 'assets/images/family_members/family_grandfather.png',
        sound: 'grand_father.wav'),
    Item(
        jpLang: 'sobo',
        enLang: 'grandmother',
        img: 'assets/images/family_members/family_grandmother.png',
        sound: 'grand_mother.wav'),
    Item(
        jpLang: 'ani',
        enLang: 'older brother',
        img: 'assets/images/family_members/family_older_brother.png',
        sound: 'older_bother.wav'),
    Item(
        jpLang: 'ane',
        enLang: 'older sister',
        img: 'assets/images/family_members/family_older_sister.png',
        sound: 'older_sister.wav'),
    Item(
        jpLang: 'Otouto',
        enLang: 'younger brother',
        img: 'assets/images/family_members/family_younger_brother.png',
        sound: 'younger_brohter.wav'),
    Item(
        jpLang: 'imouto',
        enLang: 'younger sister',
        img: 'assets/images/family_members/family_younger_sister.png',
        sound: 'younger_sister.wav'),
    Item(
        jpLang: 'Musuko',
        enLang: 'son',
        img: 'assets/images/family_members/family_son.png',
        sound: 'son.wav'),
    Item(
        jpLang: 'musume',
        enLang: 'daughter',
        img: 'assets/images/family_members/family_daughter.png',
        sound: 'daughter.wav'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff063c4a),
      appBar: AppBar(
        backgroundColor: const Color(0xff063c4a),
        elevation: 0,
        centerTitle: true,
        title: const Text('Family'),
      ),
      body: ListView.builder(
        itemCount: family.length,
        itemBuilder: (context, index) {
          return CategoryItems(
            item: family[index],
            audioPrefix: 'family_members',
          );
        },
      ),
    );
  }
}
