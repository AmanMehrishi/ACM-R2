import 'dart:ffi';

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Center(child: Text('Dicee')),
        backgroundColor: Colors.red,
      ),
      body: DicePage(),
    ),
  )
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  @override

  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            Expanded(
              child:TextButton(onPressed: () {
                setState(() {
                  RandomNumber(leftDiceNumber, rightDiceNumber);
                  print("left and right dice numbers are $leftDiceNumber and $rightDiceNumber respectively ");
                });
              },
                child: Image.asset('images/dice$leftDiceNumber.png'),


              ),
            ),

            SizedBox(width: 10,),
            Expanded(
              child: TextButton(onPressed: () {
                setState(() {
                  RandomNumber(leftDiceNumber, rightDiceNumber);
                });
              },
                  child: Image.asset('images/dice$rightDiceNumber.png')),
            ),




          ],

        ),
      ),
    );
  }

   void RandomNumber(int ranA,int ranB)
   {
      ranA = Random().nextInt(6) + 1;
      ranB = Random().nextInt(6) + 1;

      leftDiceNumber = ranA;
      rightDiceNumber = ranB;


   }


  }




