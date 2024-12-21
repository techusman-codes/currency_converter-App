import 'package:currency_converter/pages/curency_converter.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Everything in Flutter is a widget
// what is state?  state is a any data that will determine how ur widget in screen is going looks like.
// Types of Widget
// Stateless widget
// what is stateless widget that is a widget that did not change with time(immutable once the widget is created it can not be change)
// Statefull widget
// this is widget that chnage with time, its mutable mean the state can change with time.

// Material Design its created bt google
// Curpertino Design Design is build by Apple

// What is BuildContext?
// Buildcontext this tells you where a particular widhet is located in thw widget tree

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CurencyConverter(),
    );
  }
}
// we have three types of Application 
// 1) is the Debug that means during the production to check use (kDEBUG MODE)
// 2) Realease means during the testing and deploying
// 3) profile is the combination of Debug and release
