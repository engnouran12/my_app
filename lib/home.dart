import 'package:flutter/material.dart';
import './questions.dart';

//1-constractor 2)init state 3)build

class MyHome extends StatefulWidget {
  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  final _questions = const [
    {
      "questiontext": 'what is your fav color ',
      'answer': [
        {'text': 'black', 'score': 10},
        {'text': 'red', 'score': 6},
        {'text': 'green', 'score': 2}
      ]
    },
    {
      "questiontext": 'what is your fav animal?',
      'answer': [
        {'text': 'dog', 'score': 10},
        {'text': 'rabbit', 'score': 6},
        {'text': 'ele', 'score': 2}
      ]
    },
    {
      "questiontext": 'what is your fav person?',
      'answer': [
        {'text': 'nour', 'score': 10},
        {'text': 'nouran', 'score': 6},
        {'text': 'noury', 'score': 2}
      ]
    },
  ];
  var totalscore = 0;
  int _questionindex = 0;
  void _answerquestion(score, String answer) {
    totalscore = (totalscore + score) as int;
    setState(() {
      _questionindex++;
    });
    if (_questionindex < _questions.length) {
      print('moreee');
    } else {
      print('U Done');
    }
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //String questiontext;
//map question &answer

    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text('my first app'),
      ),
      body: (_questionindex < _questions.length)
          ? Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Questions(
                    _questions[_questionindex]["questiontext"],
                  ),
                  //maping answer with its question
                  ...(_questions[_questionindex]['answer']
                          as List<Map<String, Object>>)
                      .map((answer) {
                    String answer2 = (answer['text']) as String;
                    return Container(
                      width: double.infinity,
                      //color: Colors.black,
                      child: ElevatedButton(
                        onPressed: () =>
                            _answerquestion(answer['score'], answer['text']as String),
                        child: Text(
                       answer["text"] as String ,
                        
                        ),
                      ),
                    );
                  }).toList()
                ],
              ),
            )
          : Center(
              child: Text(
                'Done!',
              ),
            ),
    );
  }
}
