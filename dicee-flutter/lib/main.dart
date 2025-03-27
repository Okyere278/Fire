import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dice App',
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(
            child: Text('Dicee',
            style: TextStyle(
                color: Colors.redAccent,
            ),
                    ),
          ),
          backgroundColor: Colors.white,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage();

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1  ;
  int rightDiceNumber = 1;

  leftDice() =>{
    setState(() {
      leftDiceNumber = Random().nextInt(6)+ 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    }),
  };

  rightDice ()=>{
    setState(() {
      rightDiceNumber = Random().nextInt(6) + 1;
      leftDiceNumber = Random().nextInt(6)+ 1;
    }),
  };

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child:Padding(
              padding: EdgeInsets.all(16.0),
              child: TextButton(
                onPressed: (){
                 leftDice();
                },
                child: Image.asset('images/dice$leftDiceNumber.png'),
              ),
            ),
          ),
          Expanded(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: TextButton(
                  onPressed: (){
                   rightDice();
                  },
                  child: Image.asset('images/dice$rightDiceNumber.png'),
                ),
              )
          ),
        ],
      ),
    );
  }
}

