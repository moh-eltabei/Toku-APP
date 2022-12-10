// ignore_for_file: avoid_print

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/models/item.dart';

class CategoryItems extends StatelessWidget {
  const CategoryItems(
      {super.key, required this.item, required this.audioPrefix});
  final Item item;
  final String audioPrefix;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xff1e505d),
        borderRadius: BorderRadius.all(
          Radius.circular(18),
        ),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      height: 95,
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 8),
            child: Image.asset(
              item.img!,
              height: 75,
              width: 75,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'jp: ${item.jpLang}',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'en: ${item.enLang}',
                  style: TextStyle(
                    color: Colors.indigo[100],
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          IconButton(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onPressed: () {
              try {
                AudioCache player =
                    AudioCache(prefix: 'assets/sounds/$audioPrefix/');
                player.play(item.sound);
              } catch (error) {
                (error);
              }
            },
            icon: const Icon(
              Icons.play_arrow,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

class PhrasesItem extends StatelessWidget {
  const PhrasesItem(
      {super.key, required this.audioPrefix, required this.phrase});
  final String audioPrefix;
  final Item phrase;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xff1e505d),
        borderRadius: BorderRadius.all(
          Radius.circular(18),
        ),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      height: 95,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'jp: ${phrase.jpLang}',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'jp: ${phrase.enLang}',
                  style: TextStyle(
                    color: Colors.indigo[100],
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          IconButton(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onPressed: () {
              try {
                AudioCache player =
                    AudioCache(prefix: 'assets/sounds/$audioPrefix/');
                player.play(phrase.sound);
              } catch (error) {
                print(error);
              }
            },
            icon: const Icon(
              Icons.play_arrow,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
