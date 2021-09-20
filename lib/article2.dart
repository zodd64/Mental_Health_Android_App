import 'package:flutter/material.dart';

class Article2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Why is this a problem?"),
        ),
        body: Column(
          children: [
            Container(
              child: Text(
                "If the public calls this temporary mood state “depression” they will erroneously believe that they know what it feels like to be depressed in the clinical sense of the word. However, they will be wrong! Even though they are wrong, it won't stop them from making certain assumptions and comments that can be very detrimental to people who have a diagnosable condition.",
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
                "In particular, they are likely to have beliefs or even make comments such as “When I was depressed, I just snapped myself out of it” or “Depression is just a matter of attitude.” Certainly, these comments may relate to a temporary mood state, but they do not apply to the depressive disorders. Not only that, but saying these types of things to a depressed person can only serve to make them feel worse.",
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
                "However, these critical attitudes can make the depression worse. It is difficult enough for a person to manage the depression without having the additional stress of feeling like a failure.",
                textAlign: TextAlign.left,
                overflow: TextOverflow.ellipsis,
                maxLines: 100,
              ),
            ),
          ],
        ));
  }
}
