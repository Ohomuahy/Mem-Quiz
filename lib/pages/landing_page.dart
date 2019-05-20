import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color.fromRGBO(0, 0, 0, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FlatButton(
            onPressed: () => Navigator.of(context).pushNamed("/question"),
            shape: CircleBorder(),
            splashColor: Colors.deepPurpleAccent,
            color: Colors.deepPurple,
            padding: EdgeInsets.all(100),
            child: Text(
              "Meme Quiz",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 48.0,
                fontFamily: 'Open_Sans_Condensed',
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
