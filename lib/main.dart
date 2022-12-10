import 'package:flutter/material.dart';
import 'package:toku_app/screens/home_page.dart';

void main() {
  runApp(const TokuApp());
}

class TokuApp extends StatelessWidget {
  const TokuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xff063c4a),
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: const Color(0xff063c4a),
          title: const Text(
            'Toku',
            style: TextStyle(fontSize: 24),
          ),
        ),
        body: const HomePage(),
      ),
    );
  }
}
