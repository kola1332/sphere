// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

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
      routes: {'/': (context) => Home()},
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              iconSize: 150,
              onPressed: () {},
              icon: Image.asset('lib/assets/icon.png'),
            ),
            SizedBox(height: 20),
            // Text('Sniper',
            //     style: TextStyle(
            //       fontSize: 25,
            //       fontWeight: FontWeight.w600,
            //     )),
            // Image.asset('lib/assets/icon.png'),
            // Image(image: AssetImage('lib/assets/icon.png')),
          ],
        ),
      ),
    );
  }
}
