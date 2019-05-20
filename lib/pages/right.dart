import 'package:flutter/material.dart';

class Right extends StatelessWidget {
  final int nextPage;

  Right(this.nextPage);

  @override
  Widget build(BuildContext context) {
    var route = "/question$nextPage"; 
    return Material(
      color: const Color.fromRGBO(300, 240, 100, 300),
      child: InkWell(
        onTap: () => Navigator.of(context).pushNamed(route),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                    "Congratulations You Know Your Memes",
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
      ),
    );
  }
}