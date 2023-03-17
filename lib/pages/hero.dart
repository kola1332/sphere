// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class HeroPage extends StatelessWidget {
  final heroName;
  const HeroPage({super.key, required this.heroName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(heroName),
      ),
    );
  }
}
