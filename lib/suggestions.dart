import 'package:flutter/material.dart';

class Suggestions extends StatefulWidget {
  @override
  _SuggestionsState createState() => _SuggestionsState();
}

class _SuggestionsState extends State<Suggestions> {
  var text = [
    'What is Depression?',
    'Why is this a problem?',
    'When is Depression caused by Stress?',
    'Why does it seem that Depression is caused by Stress?'
  ];
  var shortDescription = [
    'How often does a depressed person hear comments such as these?',
    'The misunderstanding occurs because just about everyone has experienced sadness or “feeling down.”',
    'Although the above conditions appear to be biological conditions that are caused by genetic predispositions, some people may experience temporary symptoms of depression due to stress.',
    'The fact is that the depressive disorders, as is true of most of the physical disorders, are reactive to stress.'
  ];
  List<String> images = [
    "https://images.unsplash.com/photo-1605131555060-e202a6a1b8ef?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80",
    "https://images.unsplash.com/photo-1605477899141-ac050a727db1?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80",
    "https://images.unsplash.com/photo-1606593365557-2712ded04d00?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1606758394562-0e5d524836fe?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80",
  ];

  Widget customcard(
      String text, String imagepath, String shortDescription, String route) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).pushNamed(route);
        },
        child: Card(
          elevation: 10.0, //η σκια που θελουμε να φαινεται

          child: Wrap(
            children: [
              Image.network(imagepath),
              ListTile(
                title: Text(text, style: TextStyle(fontSize: 14)), //fontsize titlou
                subtitle:
                    Text(shortDescription, style: TextStyle(fontSize: 12)), //fontsize upotitlou
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final title = 'Suggestions';

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 20.0),
        height: 500.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
              width: 220,
              child: customcard(
                  text[0], images[0], shortDescription[0], '/article1'),
            ),
            Container(
              width: 220,
              child: customcard(
                  text[1], images[1], shortDescription[1], '/article2'),
            ),
            Container(
              width: 220,
              child: customcard(
                  text[2], images[2], shortDescription[2], '/article3'),
            ),
            Container(
              width: 220,
              child: customcard(
                  text[3], images[3], shortDescription[3], '/article4'),
            ),
          ],
        ),
      ),
    );
  }
}
