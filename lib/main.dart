import 'package:flutter/material.dart';
import 'package:quizz_like_application/home_page.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'dana'),
      home: HomeWidget(),
      );
  }
}
