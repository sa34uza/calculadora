import 'package:flutter/material.dart';
import 'buttom.dart';

class ButtomRow extends StatelessWidget {
  final List<Buttom> buttons;

  ButtomRow(this.buttons);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: buttons.fold(
          <Widget>[],
          (list, b) {
            list.isEmpty ? list.add(b) : list.addAll([SizedBox(width: 1), b]);
            return list;
          },
        ),
      ),
    );
  }
}
