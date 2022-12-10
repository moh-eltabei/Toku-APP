import 'package:flutter/material.dart';
import 'package:toku_app/components/home_item.dart';
import 'package:toku_app/screens/colors_page.dart';
import 'package:toku_app/screens/family_page.dart';
import 'package:toku_app/screens/numbers_page.dart';
import 'package:toku_app/screens/phrases_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        padding: const EdgeInsets.all(16),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        childAspectRatio: (.7 / 1),
        children: [
          Category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const NumbersPage();
              }));
            },
            color: const Color(0xffb485fd),
            icon: Icons.format_list_numbered_rounded,
            text: 'Numbers',
          ),
          Category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const FamilyPage();
              }));
            },
            color: const Color(0xfffea19d),
            icon: Icons.family_restroom_outlined,
            text: 'Family',
          ),
          Category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const ColorsPage();
              }));
            },
            color: const Color(0xff66dc99),
            icon: Icons.color_lens,
            text: 'Colors',
          ),
          Category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const PhrasesPage();
              }));
            },
            color: const Color(0xff75ceff),
            icon: Icons.language,
            text: 'Phrases',
          ),
        ]);
    /* Column(
      children: [
        Category(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return NumbersPage();
            }));
          },
          text: 'Numbers',
          color: Colors.lightBlue,
        ),
        Category(
            onTap: () {}, text: 'FamilyMembers', color: Colors.lightBlue[600]),
        Category(
            onTap: () {
              print('Colors Tapped');
            },
            text: 'Colors',
            color: Colors.lightBlue[800]),
        Category(
            onTap: () {
              print('Phrases Tapped');
            },
            text: 'Phrases',
            color: Colors.lightBlue[900]),
      ],
    ); */
  }
}
