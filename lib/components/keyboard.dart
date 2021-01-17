import 'package:flutter/material.dart';
import 'buttom.dart';
import 'buttom.row.dart';

class KeyBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: Column(
        children: [
          ButtomRow([
            Buttom(
              text: 'AC',
              big: true,
              color: Colors.blueGrey[700],
            ),
            Buttom(
              text: '%',
            ),
            Buttom.operation(
              text: '/',
            ),
          ]),
          ButtomRow([
            Buttom(
              text: '7',
            ),
            Buttom(
              text: '8',
            ),
            Buttom(
              text: '9',
            ),
            Buttom.operation(
              text: 'x',
            ),
          ]),
          ButtomRow([
            Buttom(
              text: '4',
            ),
            Buttom(
              text: '5',
            ),
            Buttom(
              text: '6',
            ),
            Buttom.operation(
              text: '-',
            ),
          ]),
          ButtomRow([
            Buttom(
              text: '1',
            ),
            Buttom(
              text: '2',
            ),
            Buttom(
              text: '3',
            ),
            Buttom.operation(
              text: '+',
            ),
          ]),
          ButtomRow([
            Buttom(
              text: '0',
              big: true,
            ),
            Buttom(
              text: '.',
            ),
            Buttom.operation(
              text: '=',
            ),
          ]),
        ],
      ),
    );
  }
}
