import 'package:flutter/material.dart';
import '../components/display.dart';


class Calculadora extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Column(
        children: [
          Display("tela.bat"),
          Text('Keyboard'),
        ],
      ),
    );
  }
}