import 'package:flutter/material.dart';

class Question3 extends StatelessWidget {
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
        padding: EdgeInsets.only(top: 120.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text("What Is The Name of This Comediean", textAlign: TextAlign.center, style: title),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 60.0, horizontal: 10.0),
              child: Image.asset("q3.jpeg"),
            ),
            buildAnswer(context, answer: "A.) Dave Chappelle", route: "/right3"),
            buildAnswer(context, answer: "B.) Bill Cosby ", route: "/wrong"),
            buildAnswer(context, answer: "C.) Eddie Murphy", route: "/wrong"),
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
