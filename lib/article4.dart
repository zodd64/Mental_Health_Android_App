import 'package:flutter/material.dart';

class Article4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Why does it seem that Depression is caused by Stress?"),
        ),

        body:

        SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child:Column(
          children: [
            Container(
              child: Text(
                "This is due to the physiological impact of stress as well as the psychological impact. For instance, if a person has the common cold, their body will marshal the defenses such as producing white blood cells, adrenalin, and cortisol to fight the invading germs. When the body does this it requires additional energy and it reduces the functioning of other systems to obtain this energy. Therefore, a person will feel fatigued and will tend to be less active.",
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
                "The problem is that we only have so much in terms of physiological resources. In addition, the psychological impact of stress is that a person finds it more difficult to do the necessary self-care. With a common cold, for example, it may be hard to obtain the necessary rest. As a result of the physiological and psychological factors, it becomes more difficult to recover from the common cold.",
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
                "This same process occurs with clinical depression. The more stressors in a person's life, the more difficult it becomes to recover from the depression. Therefore, many people will tend to associate the presence of these stressors as the cause of the depression. However, that is not the case. The stressors may impact the depression and make it worse or more difficult to recover, but they are not typically the cause. In fact, if a stressor is the cause, it is likely a different condition known as an adjustment disorder rather than depression which we will discuss later.",
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
                "However, those sorts of suggestions and comments without a full understanding of clinical depression become detrimental rather than helpful because they can be seen as an attack which is just another stressor for the depressed individual.",
                textAlign: TextAlign.left,
                overflow: TextOverflow.ellipsis,
                maxLines: 100,
              ),
            ),
          ],
        )));
  }
}
