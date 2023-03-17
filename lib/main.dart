// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:sphere/assets/const/hero_names.dart';
import 'package:sphere/assets/const/version.dart';
import 'package:sphere/pages/hero.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sphere',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.purple),
      routes: {
        '/': (context) => Home(),
        '/hero': (context) => HeroPage(heroName: ''),
      },
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Sphere',
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
        ),
      ),
      body: Stack(children: [
        Padding(
          padding: const EdgeInsets.only(left: 4),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              Text(ConstValues.version),
            ],
          ),
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                iconSize: 150,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            HeroPage(heroName: HeroNames.sniper)),
                  );
                },
                icon: Image.asset('lib/assets/icons/sniper/hero_icon.png'),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ]),
    );
  }
}
