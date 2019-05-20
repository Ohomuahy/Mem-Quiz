import 'package:flutter/material.dart';

class Question9 extends StatelessWidget {
  final styleAnwser = TextStyle(
    fontSize: 35.0,
    fontFamily: 'Open_Sans_Condensed',
    fontWeight: FontWeight.bold,
  );
  
  @override
  Widget build(BuildContext context) {
    final title = TextStyle(
      fontSize: 30.0,
      fontFamily: 'Open_Sans_Condensed',
      fontWeight: FontWeight.bold,
    );

    return Material(
      color: const Color.fromRGBO(0, 0, 0, 0),
      child: Padding(
        padding: EdgeInsets.only(top: 120.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text("What Is The Name Of This Series Where This Meme Was Born", textAlign: TextAlign.center, style: title),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 40.0, horizontal: 10.0),
              child: Image.asset("q9.gif"),
            ),
            buildAnswer(context, answer: "A.) Hot Ones", route: "/right9"),
            buildAnswer(context, answer: "B.) Hot Takes", route: "/wrong"),
            buildAnswer(context, answer: "C.) Hot Wings", route: "/wrong"),
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
