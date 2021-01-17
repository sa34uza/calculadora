import 'package:flutter/material.dart';
import 'buttom.dart';
import 'buttom.row.dart';

class KeyBoard extends StatelessWidget {
  final void Function(String) cb;

  KeyBoard(this.cb);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: Column(
        children: [
          SizedBox(height: 1),
          ButtomRow([
            Buttom(
              text: 'AC', cb: cb,
              big: true,
              color: Colors.blueGrey[500],
            ),
            Buttom(
              text: '%', cb: cb, color: Colors.blueGrey[500],
            ),
            Buttom.operation(
              text: '/', cb: cb,
            ),
          ]),
          SizedBox(height: 1),
          ButtomRow([
            Buttom(
              text: '7', cb: cb,
            ),
            Buttom(
              text: '8', cb: cb,
            ),
            Buttom(
              text: '9', cb: cb,
            ),
            Buttom.operation(
              text: 'x', cb: cb,
            ),
          ]),
          SizedBox(height: 1),
          ButtomRow([
            Buttom(
              text: '4', cb: cb,
            ),
            Buttom(
              text: '5', cb: cb,
            ),
            Buttom(
              text: '6', cb: cb,
            ),
            Buttom.operation(
              text: '-', cb: cb,
            ),
          ]),
          SizedBox(height: 1),
          ButtomRow([
            Buttom(
              text: '1', cb: cb,
            ),
            Buttom(
              text: '2', cb: cb,
            ),
            Buttom(
              text: '3', cb: cb,
            ),
            Buttom.operation(
              text: '+', cb: cb,
            ),
          ]),
          SizedBox(height: 1),
          ButtomRow([
            Buttom(
              text: '0', cb: cb,
              big: true,
            ),
            Buttom(
              text: '.', cb: cb,
            ),
            Buttom.operation(
              text: '=', cb: cb,
            ),
          ]),
          SizedBox(height: 1),
        ],
      ),
    );
  }
}
