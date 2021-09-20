import 'package:flutter/material.dart';

class Article3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("When is Depression caused by Stress?"),
        ),
        body: Column(
          children: [
            Container(
              child: Text(
                "Such a condition is typically diagnosed as an adjustment disorder with depression or in the case of a traumatic experience may be diagnosed as an acute stress reaction.",
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
                "An adjustment disorder may involve the depressive symptoms but the symptoms can be traced to a single event or a period of stress in a person's life. In addition, an adjustment disorder is not likely to be recurrent unless triggered by other events or periods of stress. However, this condition should not be confused with a depressive illness which has an underlying biological cause as we understand it today.",
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
                "An adjustment disorder, in particular, can be very receptive to CBT methods since these methods directly impact the ability to cope with stress. In addition, practicing stress management methods and addressing daily stress is likely to be helpful in preventing the occurrence of an adjustment disorder.",
                textAlign: TextAlign.left,
                overflow: TextOverflow.ellipsis,
                maxLines: 100,
              ),
            ),
          ],
        ));
  }
}
