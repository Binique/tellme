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
      ),
    ),
  );
  }
