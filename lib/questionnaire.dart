import 'package:flutter/material.dart';

import './questions.dart';
import './answers.dart';

class Questionnaire extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _QuestionnaireState();
  }
}

class _QuestionnaireState extends State<Questionnaire> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': "Little interest or pleasure in doing things",
        'answers': [
          'Not at all',
          'Several days',
          'More than half the days',
          'Nearly every day'
        ],
      },
      {
        'questionText': "Feeling down, depressed, or hopeless",
        'answers': [
          'Not at all',
          'Several days',
          'More than half the days',
          'Nearly every day'
        ],
      },
      {
        'questionText':
            "Trouble falling or staying asleep, or sleeping too much",
        'answers': [
          'Not at all',
          'Several days',
          'More than half the days',
          'Nearly every day'
        ],
      },
      {
        'questionText': "Feeling tired or having little energy",
        'answers': [
          'Not at all',
          'Several days',
          'More than half the days',
          'Nearly every day'
        ],
      },
      {
        'questionText': "Poor appetite or overeating",
        'answers': [
          'Not at all',
          'Several days',
          'More than half the days',
          'Nearly every day'
        ],
      },
      {
        'questionText':
            "Feeling bad about yourself or that you are a failure or have let yourself or your family down",
        'answers': [
          'Not at all',
          'Several days',
          'More than half the days',
          'Nearly every day'
        ],
      },
      {
        'questionText':
            "Trouble concentrating on things, such as reading the newspaper or watching television",
        'answers': [
          'Not at all',
          'Several days',
          'More than half the days',
          'Nearly every day'
        ],
      },
      {
        'questionText':
            "Moving or speaking so slowly that the other people could have noticed. Or the opposite, being so figety or restless that you have been moving around a lot more than usual",
        'answers': [
          'Not at all',
          'Several days',
          'More than half the days',
          'Nearly every day'
        ],
      },
      {
        'questionText':
            "Thoughts that you would be better off dead, or of hurting yourself",
        'answers': [
          'Not at all',
          'Several days',
          'More than half the days',
          'Nearly every day'
        ],
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lime,
          //Εδώ δίνω χρώμα στο appBar του questionnaire
          title: Text('Questionnaire'),
        ),
        body: _questionIndex <
                questions
                    .length //Εαν ειναι μικροτερο απο το length εκτελεσε τον κωδικα μετα το "?""
            ? Column(
                children: [
                  Text(
                      "Over the last 2 weeks,how often have you been bothered by one of the following problems?",
                      style: TextStyle(fontSize: 16)), //allazw fontsize
                  Question(questions[_questionIndex]['questionText']),
                  ...(questions[_questionIndex]['answers'] as List<
                          String>) // με το as List<String> δηλωνουμε στο flutter οτι θα ειναι παντα λιστα το questions
                      .map((answer) {
                    //κανουμε map το list question
                    return Answer(_answerQuestion, answer);
                  }).toList()
                  //με το toList λεμε στο map οτι θελω να επιστρεφεις μια λιστα
                ],
              )
            : Center(
                child: Column(
                    mainAxisSize: MainAxisSize.max,
                    //αν ειναι μεγαλυτερο απο το length εκτελει αυτο τον κωδικα μετα το ":"
                    mainAxisAlignment: MainAxisAlignment.center,
                    //kentrarisma ston aksona Y
                    crossAxisAlignment: CrossAxisAlignment.center,
                    //kentrarisma ston aksona X

                    children: [
                      Text("Thanks for finishing the Questionnaire!"),
                      //aplo keimeno sto telos tou erwthmatologiou panw apto koumpi

                      RaisedButton(
                          onPressed: () {
                            Navigator.pop(
                                context); //otan path8ei to koumpi paei sto home
                          },
                          child: Text(
                              "Click me to go back"), //keimeno gia to koumpi
                          color: Colors.lime, //allazw xrwma sto koumpi
                          shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(
                                  30.0)) //sxhma gia to koumpi
                          )
                    ]),
              ),
      ),
    );
  }
}
