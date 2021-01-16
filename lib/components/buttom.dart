import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Buttom extends StatelessWidget {
  String text;
  final bool big;

  Buttom({
    @required this.text,
    this.big = false,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: big ? 2 : 1,
      child: RaisedButton(
        child: Text(text),
        onPressed: () {},
      ),
    );
  }
}
