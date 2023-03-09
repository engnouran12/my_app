import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  final  questiontext;
  Questions(this.questiontext);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      //padding: EdgeInsets.all(20), // cons of con
      margin: EdgeInsets.all(20), // all con from button below or all dir
      
      child: Text(
        questiontext,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
