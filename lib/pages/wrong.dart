import 'package:flutter/material.dart';

class Wrong extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color.fromRGBO(227, 62, 62, 300),
      child: InkWell(
        onTap: () => Navigator.pop(context),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                    "Sorry You Aren't A Meme God",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'Open_Sans_Condesnsed',
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      )
    );
  }
}