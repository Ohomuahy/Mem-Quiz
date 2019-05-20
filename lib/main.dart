import 'package:flutter/material.dart';
import './pages/landing_page.dart';
import './pages/question.dart';
import './pages/right.dart';
import './pages/question2.dart';
import './pages/wrong.dart';
import './pages/question3.dart';
import './pages/question4.dart';
import './pages/question5.dart';
import './pages/question6.dart';
import './pages/question7.dart';
import './pages/question8.dart';
import './pages/question9.dart';
import './pages/question10.dart';




void main() => runApp(new MemeQuiz());

class MemeQuiz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      initialRoute: '/',
      routes: {
        '/': (context) => LandingPage(),
        '/question': (context) => Question(),
        '/right': (context) => Right(2),
        '/question2': (context) => Question2(),
        '/right2': (context) => Right(3),
        '/question3': (context) => Question3(),
        '/wrong': (context) => Wrong(),
        '/question4':(context) => Question4(),
        '/right3': (context) => Right(4),
        '/question5': (context) => Question5(),
        '/right4': (context) => Right(5),
        '/right5': (context) => Right(6),
        '/question6': (context) => Question6(),
        '/right6': (context) => Right(7),
        '/question7': (context) => Question7(),
        '/right7': (context) => Right(8),
        '/question8': (context) => Question8(),
        '/right8': (context) => Right(9),
        '/question9': (context) => Question9(),
        '/right9': (context) => Right(10),
        '/question10': (context) => Question10(),
        '/right10': (context) => Right(11),
        


      },
    );
  }   
}
