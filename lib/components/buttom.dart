import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Buttom extends StatelessWidget {
  String text;

  Buttom({
    @required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: RaisedButton(
        child: Text(text),
        onPressed: () {},
      ),
    );
  }
}
