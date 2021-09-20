import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var listImages = [
    //η λιστα με τις εικονες που θα εμφανισουμε
    'assets/images/suggestions.png',
    'assets/images/questionnaire.png',
  ];

  Widget customcard(String langname, String imagepath, String route) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).pushNamed(route);
          //Navigator.pushName(context,route); διαφορετικη συνταξη για το πανω
          // Navigator.of(context).push(MaterialPageRoute(builder:(context)=>CardPage()));  διαφορετικη συνταξη για το απο πανω χωρις pageRoute

          //   Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(context)=>CardPage())); οταν καλειται ετσι σβηνει την Homepage απο στο stack και οταν πατησουμε επιστροφη παει στην προηγουμενη σελιδα απο το homepage δλδ στο SplashScreen
          //  Navigator.of(context).pushReplacementNamed(routePage); //το ιδιο με το απο πανω σε διαφορετικη συνταξη και με namedRoutes
        },
        child: Card(
          //το wdiget Card
          color: Colors.lime,
          elevation: 10.0, //η σκια που θελουμε να φαινεται
          child: Container(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: 10.0), //συμμετρικη αποσταση στον καθετο αξονα
                  child: Material(
                    //χρησιμοποιουμε το material για την σκιαση κτλ
                    elevation: 5.0,
                    //σκια
                    borderRadius: BorderRadius.circular(100),
                    //για να γινει στρογγυλο το container που περιεχει την εικονα
                    child: Container(
                      height: 160,
                      //χρειαζονται για να φανει η στρογγυλοποιηση του Material αλλιως η εικονα ειναι μεγαλυτερη και δεν φαινεται (στο συγκεκριμενο παραδειγμα)
                      width: 160,
                      child: ClipOval(
                        //κοβει την εικονα και την κανει στρογγυλη

                        child: Image(
                          fit: BoxFit.contain, //να γεμιζει η εικονα τον χωρο
                          image: AssetImage(imagepath), //δυναμικο path εικονας
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    langname, //δυναμικο κειμενο εικονας
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
        //  ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Depression CBT"),
        automaticallyImplyLeading: false,
      ),
      body: ListView(
        children: [
          customcard("Suggestions", listImages[0],
              '/cardpagesuggestions'), //περναμε τιτλο και εικονα απο την λιστα
          customcard("Questionnaire", listImages[1], '/cardpagequestionnaire'),
        ],
      ),
    );
  }
}
