import 'package:flutter/material.dart';

class Question7 extends StatelessWidget {
  final styleAnwser = TextStyle(
    fontSize: 29.0,
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
            Text("Where Did This Image Occur", textAlign: TextAlign.center, style: title),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 40.0, horizontal: 10.0),
              child: Image.asset("q7.jpg"),
            ),
            buildAnswer(context, answer: "A.) Joe Rogan Experience", route: "/wrong"),
            buildAnswer(context, answer: "B.) Meme Review", route: "/right7"),
            buildAnswer(context, answer: "C.) The Ben Shapiro Show", route: "/wrong"),
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
