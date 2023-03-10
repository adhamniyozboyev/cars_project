import 'package:cars_project/screens/final.dart';
import 'package:cars_project/screens/homePage.dart';
import 'package:cars_project/screens/secondPage.dart';
import 'package:cars_project/screens/thirdPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/home',
      routes: {
        '/home': (context) => HomePage(),
        '/second': (context) => SecondPage(),
        'third': (context) => ThirdPage(),
        'final': (context) => FinalPage()
      },
    );
  }
}
