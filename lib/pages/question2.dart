import 'package:flutter/material.dart';

class Question2 extends StatelessWidget {
  final styleAnwser = TextStyle(
    fontSize: 35.0,
    fontFamily: 'Open_Sans_Condensed',
    fontWeight: FontWeight.bold,
  );
  
  @override
  Widget build(BuildContext context) {
    final title = TextStyle(
      fontSize: 35.0,
      fontFamily: 'Open_Sans_Condensed',
      fontWeight: FontWeight.bold,
    );

    return Material(
      color: const Color.fromRGBO(0, 0, 0, 0),
      child: Padding(
        padding: EdgeInsets.only(top: 140.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text("What game did this meme inspire from", textAlign: TextAlign.center, style: title),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 40.0, horizontal: 0.0),
              child: Image.asset("q2.jpeg"),
            ),
            buildAnswer(context, answer: "A.) The Last of Us", route: "/right2"),
            buildAnswer(context, answer: "B.) The Last of Us 2", route: "/wrong"),
            buildAnswer(context, answer: "C.) Life Is Strange", route: "/wrong"),
          ],
        ),
      ),
    );
  }

  InkWell buildAnswer(context, {String answer, String route}) {
    return InkWell(
          onTap: () => Navigator.of(context).pushNamed(route),
          child:Text(
            answer,
            style: styleAnwser,
            textAlign: TextAlign.center,
          ),
          );
  }
}
