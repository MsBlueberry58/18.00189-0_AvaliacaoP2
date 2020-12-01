// Bruna Galastri Guedes - 18.00189-0

import 'package:flutter/material.dart';
import 'package:flutter_p2/telas/tela1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokemon Guessing Game',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      //home: MyHomePage(title: 'Quem e esse Pokemon?'),
      home: Tela1(),
    );
  }
}

