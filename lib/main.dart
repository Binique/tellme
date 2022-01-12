import 'dart:math';

import 'package:flutter/material.dart';
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Center(
              child:
              Text('Ask me anything')
          ),
          backgroundColor: Colors.blue.shade500,
        ),
        body: BoulePage (),
        ),
      ),
  );
  }
  class BoulePage extends StatefulWidget {
    const BoulePage({Key? key}) : super(key: key);
    @override
    _BoulePageState createState() => _BoulePageState();
  }

  class _BoulePageState extends State<BoulePage> {


    int ballNumber=Random().nextInt(5)+1;
    void ChangeBall () {
      setState ( (){
       ballNumber = Random().nextInt(5)+1;
      } );

    }
    @override
    Widget build(BuildContext context) {
      return Center(
        child:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
            child:
            TextButton(
                onPressed:()
                {
                ChangeBall();
                }, child: Image.asset('images/ball$ballNumber.png') ,
            ),
            ),
          ],
        ),
      );
    }
  }

