import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final styleAnwser = TextStyle(
    fontSize: 42.0,
    fontFamily: 'Open_Sans_Condensed',
    fontWeight: FontWeight.bold,
  );
  
  @override
  Widget build(BuildContext context) {
    final title = TextStyle(
      fontSize: 50.0,
      fontFamily: 'Open_Sans_Condensed',
      fontWeight: FontWeight.bold,
    );

    return Material(
      color: const Color.fromRGBO(0, 0, 0, 0),
      child: Padding(
        padding: EdgeInsets.only(top: 143.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text("Who Is This", textAlign: TextAlign.center, style: title),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 10.0),
              child: Image.asset("q1.png"),
            ),
            buildAnswer(context, answer: "A.) PewDiePie", route: "/right"),
            buildAnswer(context, answer: "B.) Gloria Borger", route: "/right"),
            buildAnswer(context, answer: "C.) Felix Kjellberg", route: "/right"),
          ],
        ),
      ),
    );
  }

  InkWell buildAnswer(context, {String answer, String route}) {
    return InkWell(
          onTap: () => Navigator.of(context).pushNamed('/right'),
          child:Text(
            answer,
            style: styleAnwser,
            textAlign: TextAlign.center,
          ),
          );
  }
}
