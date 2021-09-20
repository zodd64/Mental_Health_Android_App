import 'package:flutter/material.dart';
import './splashscreen.dart';
import './home.dart';
import './suggestions.dart';
import './article1.dart';
import './article2.dart';
import './article3.dart';
import './article4.dart';
import './questionnaire.dart';

void main() {
  runApp(MaterialApp(
    title: 'Multiple screens',
    theme: ThemeData(
      primaryColor: Colors.lime, //na exoun xrwma lime
    ),
    initialRoute: '/splashscreen',
    routes: {
      '/': (context) => MyApp(), //οριζουμε τα μονοπατια NamedRoutes
      '/splashscreen': (context) => SplashScreen(),
      '/homepage': (context) => HomePage(),
      '/cardpagesuggestions': (context) => Suggestions(),
      '/article1': (context) => Article1(),
      '/article2': (context) => Article2(),
      '/article3': (context) => Article3(),
      '/article4': (context) => Article4(),
      '/cardpagequestionnaire': (context) => Questionnaire(),
    },
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(''),
    );
  }
}
