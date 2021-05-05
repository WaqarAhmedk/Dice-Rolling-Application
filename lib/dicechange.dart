import 'package:flutter/material.dart';
import 'dart:math';

class Dice extends StatefulWidget {
  Dice({Key key}) : super(key: key);

  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  void ChangeImage() {
    setState(() {
      firstdiceno = Random().nextInt(6) + 1;

      seconddiceno = Random().nextInt(6) + 1;
    });
  }

  int firstdiceno = 1;
  int seconddiceno = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Image.asset("images/Terning$firstdiceno.png"),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Image.asset("images/Terning$seconddiceno.png"),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        OutlinedButton(
          onPressed: () => ChangeImage(),
          child: Text("Roll Dice"),
        )
      ],
    );
  }
}
