import 'package:flutter/material.dart';

class Question4 extends StatelessWidget {
  final styleAnwser = TextStyle(
    fontSize: 35.0,
    fontFamily: 'Open_Sans_Condensed',
    fontWeight: FontWeight.bold,
  );
  
  @override
  Widget build(BuildContext context) {
    final title = TextStyle(
      fontSize: 32.0,
      fontFamily: 'Open_Sans_Condensed',
      fontWeight: FontWeight.bold,
    );

    return Material(
      color: const Color.fromRGBO(0, 0, 0, 0),
      child: Padding(
        padding: EdgeInsets.only(top: 145.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text("Where Did This Meme Originate", textAlign: TextAlign.center, style: title),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 60.0, horizontal: 10.0),
              child: Image.asset("q4.png"),
            ),
            buildAnswer(context, answer: "A.) Reddit", route: "/wrong"),
            buildAnswer(context, answer: "B.) YouTube Rewind 2017: ", route: "/wrong"),
            buildAnswer(context, answer: "C.) YouTube Rewind 2018:", route: "/right4"),
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
