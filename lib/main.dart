import 'package:flutter/material.dart';
import 'package:tutorial_intro_slider/awal/forgot.dart';
import 'package:tutorial_intro_slider/awal/intro.dart';
import 'package:tutorial_intro_slider/awal/logdaf.dart';
import 'package:tutorial_intro_slider/page/homepage.dart';
import 'package:tutorial_intro_slider/page/item_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: introawal(),
    );
  }
}
