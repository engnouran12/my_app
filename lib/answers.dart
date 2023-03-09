import 'package:flutter/material.dart';
import 'package:my_app/home.dart';
import './questions.dart';
import 'home.dart';

class Answer extends StatelessWidget {
//must pass state fun as aparameter to forward it in home file
  final Function selecthandler;
  final String answertwxt;
  const Answer({required this.selecthandler, required this.answertwxt});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      //color: Colors.black,
      child: ElevatedButton(
        onPressed: () {
          selecthandler;
        },
        child: Text(answertwxt),
      ),
    );
  }
}
