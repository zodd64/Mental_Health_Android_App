import 'package:flutter/material.dart';

class CardPageSuggestions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Suggestions')),
      body: Text("Python page"),
    );
  }
}

class CardPageQuestionnaire extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Questionnaire')),
      body: Text("Java page"),
    );
  }
}
