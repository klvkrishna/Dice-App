import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xffbbb2e9),
        body: DicePage(),
      ),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  void func() {
    setState(() {
      leftDiceno = Random().nextInt(6) + 1;
      rightDiceno = Random().nextInt(6) + 1;
    });
  }

  int leftDiceno = 1;
  int rightDiceno = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                func();
              },
              child: Image.asset('images/dice$leftDiceno.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                func();
              },
              child: Image.asset('images/dice$rightDiceno.png'),
            ),
          ),
        ],
      ),
    );
  }
}
