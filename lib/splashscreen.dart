import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:math';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  var yourList = [
    "I am improving all time",
    "Listen to emotions but also evaluate",
    "Trying hard will get me what I want",
    "Each day is a new day. Try again"
  ]; //το κειμενο του splash screen\
  int randomIndex = 0;

  //δημιουργει ενα τυχαιο αριθμο απο το length της λιστας
  @override
  void initState() {
    super.initState();
    randomIndex =
        Random().nextInt(yourList.length); //πριν την build οριζουμε το στοιχειο
    Timer(Duration(seconds: 5), () {
      //μετα απο 5 δευτερολεπτα καλειται ο Navigator
      Navigator.pushNamed(
          context, '/homepage'); // εδω χρησιμοποιουμε το named route που εχου-
      //με δηλωσει στην main.dart

      // Navigator.of(context).pushReplacement(MaterialPageRoute(
      //  builder: (context) => HomePage(),
      //));  //διαφορετικος τροπος χωρις named route. Απλα καλεις το widget που θες
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Center(
        child: Text(yourList[randomIndex],
            style: TextStyle(
              fontSize: 20,
              color: Colors.white, //aspro keimeno
            )),
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/bg.jpg'), fit: BoxFit.cover),
      ),
    ));
  }
}
