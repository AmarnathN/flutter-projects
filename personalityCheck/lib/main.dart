import 'package:flutter/material.dart';

void main() {
  runApp(PersonalityCheckApp());
}

class PersonalityCheckApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return PersonalityCheckAppState();
  }
}

class PersonalityCheckAppState extends State<PersonalityCheckApp> {
  var questionIndex = 0;
  void answerQuestion() {
    print('Answer Chosen');
    setState(() {
      questionIndex = questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "What's your Favourite color?",
      "What's your Favourite Animal?",
      "What's your Favourite Food?"
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Personality Check'),
        ),
        body: Column(
          children: [
            Text(questions[questionIndex]),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
