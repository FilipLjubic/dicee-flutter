import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red[300],
        appBar: AppBar(
          title: Text('Dicee'),
          centerTitle: true,
          backgroundColor: Colors.red[300],
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int random = 1;
  int random2 = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$random.png'),
              onPressed: () {
                buttonPressed();
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$random2.png'),
              onPressed: () {
                buttonPressed();
              },
            ),
          ),
        ],
      ),
    );
  }

  buttonPressed() {
    setState(() {
      random = Random().nextInt(6) + 1;
      random2 = Random().nextInt(6) + 1;
    });
  }
}
