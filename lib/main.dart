import 'package:flutter/material.dart';
import 'package:my_app/home.dart';
import './questions.dart';


void main(List<String> args) {
  runApp(MYApp());
}

// ignore: use_key_in_widget_constructors
class MYApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHome(),
    );
  }
}
