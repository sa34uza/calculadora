import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Buttom extends StatelessWidget {
  static const LIGHT = Color.fromRGBO(0, 11, 158, 0.9);
  static const DEFAULT = Color.fromRGBO(255, 255, 255, 1);
  static const OPERATION = Color.fromRGBO(248, 255, 5, 1);

  String text;
  final bool big;
  final Color color;
  final void Function(String) cb;

  Buttom({
    @required this.text,
    this.big = false,
    this.color = DEFAULT,
    @required this.cb,
  });

  Buttom.operation({
    @required this.text,
    this.big = false,
    this.color = OPERATION, 
    @required this.cb,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: big ? 2 : 1,
      child: RaisedButton(
        color: this.color,
        child: Text(
          text,
          style: TextStyle(
            color: Colors.lightBlue,
            fontSize: 30,
            fontWeight: FontWeight.w500,
          ),
        ),
        onPressed: () => cb(text),
      ),
    );
  }
}
