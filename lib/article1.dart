import 'package:flutter/material.dart';

class Article1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("What is Depression?"),
        ),
        body: Column(
          children: [
            Container(
              child: Text(
                "Some of these comments may be well-intentioned but they show a lack of understanding of the nature of depression. The problem is rooted in the use of the word “depression” as a diagnosis. The reason this is a problem is due to the word “depression” also being used by the public to describe a mood such as “I'm feeling depressed today.” However, a temporary mood and a diagnosable illness are two very different things. So the use of the same term to describe apples and oranges creates a great deal of confusion and misunderstanding.",
                textAlign: TextAlign.left,
                overflow: TextOverflow.ellipsis,
                maxLines: 100,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
            ),
            Container(
              child: Text(
                "It certainly would make sense if we could change the name of the diagnosis to something else: “XYZ Disorder” that wouldn't have any other association in the public's mind. However, this was tried by the mental health profession in the past when they changed the diagnostic term manic-depression to bipolar disorder. At the same time they changed major depression to unipolar disorder but it wasn't accepted in either the public's mind or the profession's. Therefore, the best we can do at this point is to try and distinguish between the diagnosable conditions of depression and the common use of the word “depression.”",
                textAlign: TextAlign.left,
                overflow: TextOverflow.ellipsis,
                maxLines: 100,
              ),
            ),
          ],
        ));
  }
}
