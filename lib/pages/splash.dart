//import 'package:nile_nini/pages/language.dart';
import 'language.dart';
import 'package:splashscreen/splashscreen.dart';

import 'launch_page.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => new _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 5,
      //navigateAfterSeconds: new LaunchPage(),
      navigateAfterSeconds: Language(),
      title: new Text(
        'NILE NINI',
        style: new TextStyle(
            fontWeight: FontWeight.bold, fontSize: 50.0, color: Colors.green),
      ),
      image: new Image.asset('assets/images/logo.jpg'),
//      backgroundGradient: new LinearGradient(colors: [Colors.cyan, Colors.blue], begin: Alignment.topLeft, end: Alignment.bottomRight),
      backgroundColor: Colors.white,
      styleTextUnderTheLoader: new TextStyle(),
      photoSize: 100.0,
      onClick: () => print("Flutter Egypt"),
      loaderColor: Colors.green,
    );
  }
}
