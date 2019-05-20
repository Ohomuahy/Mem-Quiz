import 'package:flutter/material.dart';

class Question8 extends StatelessWidget {
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
        padding: EdgeInsets.only(top: 150.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text("What Is The Name Of This Meme", textAlign: TextAlign.center, style: title),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 75.0, horizontal: 10.0),
              child: Image.asset("q8.jpg"),
            ),
            buildAnswer(context, answer: "A.) Tom & Jerry", route: "/wrong"),
            buildAnswer(context, answer: "B.) Unsettled Tom", route: "/right8"),
            buildAnswer(context, answer: "C.) Jerry & Tom", route: "/wrong"),
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
