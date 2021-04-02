import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          title: Center(
            child: Text('Dicee',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
            ),
          ),
          backgroundColor: Colors.deepOrange,
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
  var leftDiceNumber=1;
  var rightDiceNumber=1;
  void changeDiceface(){
    setState(() {
      leftDiceNumber =Random().nextInt(6)+1;
      rightDiceNumber =Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: (){
                changeDiceface();
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),),
          ),
          Expanded(
            child: TextButton(
              onPressed: (){
                changeDiceface();
              },
              child: Image.asset('images/dice$rightDiceNumber.png'),),
          ),
        ],
      ),
    );
  }
}
