/* This Ui is adapted from Dribbble.com designed by the artist 
  . This is just a UI adaptation of the same with no intention of making this into a 
  real life application. This is just a Ui challenge that I undertook. If I intend to use it
  in a project I would certainly notify the creator */ 

import 'package:flutter/material.dart';
import 'screens/homescreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Payements App',
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}


